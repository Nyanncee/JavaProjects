/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package csc346.hashtableassignment;

import java.util.ArrayList;

/**
 *
 * @author pande
 */
public class Hash<K,V> {
    K key;
    V value;
    //reference to next node
     Hash<K, V> next;
	ArrayList<Hash<K, V>>bucket=new ArrayList<>();
	int numBuckets=10;
	int size;
        public Hash()
        {       
                //create empty chains
		for(int i=0;i<numBuckets;i++)
		{
			bucket.add(null);
		}
	}
	public int getSize()
	{
		return size;
	}
	public boolean isEmpty()
	{
		return size==0;
	}
        //this implements hash function to find index for a key
	private int getBucketIndex(K key)
	{
		int hashCode=key.hashCode();
		return hashCode%numBuckets;
	}
     public V get(K key)
	{
		int index=getBucketIndex(key);
		Hash<K, V> head=bucket.get(index);
		while(head!=null)
		{
			if(head.key.equals(key))
			{
				return head.value;
			}
			head=head.next;
		}
		return null;	
	}
        //method to remove a given key
	public V remove(K key)
	{
              //apply hash function to find index for given key
		int index=getBucketIndex(key);
		Hash<K, V>head=bucket.get(index);
		if(head==null)
		{
			return null;
		}
		if(head.key.equals(key))
		{
			V val=head.value;
			head=head.next;
			bucket.set(index, head);
			size--;
			return val;
		}
		else
		{
			Hash<K, V>prev=null;
			while(head!=null)
			{
				
				if(head.key.equals(key))
				{
					prev.next=head.next;
					size--;
					return head.value;
				}
				prev=head;
				head=head.next;
			}
			size--;
			return null;
		}
                
        }
        
	public void add(K key,V value)
	{
		
		int index=getBucketIndex(key);
		System.out.println(index);
		Hash<K, V>head=bucket.get(index);
		Hash<K, V>toAdd=new Hash<>();
		toAdd.key=key;
		toAdd.value=value;
		if(head==null)
		{
			bucket.set(index, toAdd);
			size++;
			
		}
		else
		{
		while(head!=null)
		{
			if(head.key.equals(key))
			{
				head.value=value;
				size++;
				break;
			}
			head=head.next;
		}
		if(head==null)
		{
		head=bucket.get(index);
		toAdd.next=head;
		bucket.set(index, toAdd);
		size++;
		}
		}
		if((1.0*size)/numBuckets>0.7)
		{
			//do something
			ArrayList<Hash<K, V>>tmp=bucket;
			bucket=new ArrayList<>();
			numBuckets=2*numBuckets;
			for(int i=0;i<numBuckets;i++)
			{
				bucket.add(null);
			}
			for(Hash<K, V> headNode:tmp)
			{
				while(headNode!=null)
				{
					add(headNode.key, headNode.value);
					headNode=headNode.next;
				}
			}
			
			
		}
		
	}
   
    public static void main(String[] args){
   
      
     
    //Adding student records  
    Student s1=new Student(101,"Yashwant");    
    Student s2=new Student(102,"Prip");   
         
      Hash<Integer,String>map=new Hash<>();
       map.put(1,s1);
       map.put(2,s2);
       map.add(1, "Choc");
       System.out.println(map.remove(2));
       
        
  
    }
}
