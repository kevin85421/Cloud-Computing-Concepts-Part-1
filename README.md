# Cloud-Computing-Concepts-Part-1 : 
*	https://www.coursera.org/specializations/cloud-computing

# What is the project? 
*	The project is about implementing a **Gossip Protocol**.
*	The main functionalities of the project :
	* **Introduction** : 
	Each new peer contacts a well-known peer (the introducer) to join the group. 
	* **Membership** : 
	A membership protocol satisfies completeness all the time (for joins and failures), and accuracy when there are no message delays or losses (high accuracy when there are losses or delays). 
# Detail & Principle :
*	Data Structure of Message : 
```cpp
typedef struct MessageHdr {
	enum MsgTypes msgType; 
	vector< MemberListEntry> member_vector; // membership list of source
	Address* addr; // the source of this message
}MessageHdr;
```
*	Principle of **Gossip Protocol** :
[reference](https://zhuanlan.zhihu.com/p/39703992)

![image](https://github.com/kevin85421/Cloud-Computing-Concepts-Part-1/blob/master/gossip.jpg)

	

	
	
# How do I run the Grader on my computer ?
*	There is a grader script GraderNew.sh. It tests your implementation of membership protocol in 3 scenarios.
	* Single node failure
	* Multiple node failure
	* Single node failure under a lossy network.
```
	$ chmod +x GraderNew.sh
	$ ./GraderNew.sh
```
# Result
*	Points achieved: 90 out of 90 [100%]
	
