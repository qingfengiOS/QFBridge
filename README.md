# QFBridge
桥接模式
1. 何为桥接模式？  
	**将抽象部分与它的实现部分分离，使它们都可以独立地变化。**  
	
	>所谓抽象与它的实现分离，这并不是说，让抽象类与其派生类分离，因为这没有任何意义。实现指的是抽象类和它的派生类用来实现自己的对象。  
	 
	>实现系统时可能有多角度分类，每一种分类都有可能变化，那么就把这种多角度分离出来，让他们独立变化，减少他们之间的耦合。   
	
2. 合成/聚合复用原则  
	- 继承的弊端  
	对象的继承关系在编译时就已经定好了，所以无法在运行时改变从父类继承的实现。子类的实现与其父类有着非常紧密的依赖关系，以至于父类实现中任何变化必然会导致子类发生变化。当需要复用子类时，如果继承下来的实现不适合新的问题，则父类必须重写或者被其他更适合的类替换。这种依赖关系限制了灵活性并最终限制了复用性。  
	- 合成/聚合复用原则  
	合成(也叫做组合,Composition)和聚合(Aggregation)都是关联的特殊种类。聚合表示一种弱的“拥有“关系，体现的是A对象可以包含B对象，但B对象不是A对象的一部分；合成则是一种强的”拥有“关系，体现了严格的部分和整体的关系，部分和整体的生命周期一样。  
	  
		>比如：大雁有两个翅膀，翅膀与大雁是部分和整体的关系，并且他们的生命周期相同，于是大雁和翅膀就是合成关系。大雁是群居动物，每只大雁都属于一个雁群，一个雁群可以有多只大雁，所以，大雁和雁群是聚合关系。   
		
	**优先使用对象的组合/聚合将有助于保持每个类被封装，并集中在单个任务上。这样类和类继承层次会保持较小规模，并且不太可能增长为不可控制的庞然大物。** 
	
3. 何时使用桥接模式
	- 不想在抽象与实现之间形成固定的绑定关系（这样可以在运行时按需切换实现）  
	- 抽象及其实现都应可以通过子类化独立扩展。  
	- 对抽象的实现进行修改不应该影响客户端代码。  
	- 如果每个实现需要额外的子类以细化抽象，则说明有必要把他们分成两个部分。  
	- 想在带有不同抽象接口的多个对象之间共享一个实现。
	
 [桥接模式Demo](https://github.com/qingfengiOS/QFBridge)
 
 





