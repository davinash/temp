cp /home/adongre/work/source/ampool/gemfire-assembly/build/install/apache-geode/lib/gemfire-core-1.0.0-incubating-SNAPSHOT.jar .
cp /home/adongre/work/source/cdap/cdap-data-fabric/target/cdap-data-fabric-3.2.0-SNAPSHOT.jar .
cp /home/adongre/work/source/cdap/cdap-master/target/cdap-master-3.2.0-SNAPSHOT.jar .
cp /home/adongre/work/source/cdap/cdap-data-ampool/target/cdap-data-ampool-3.2.0-SNAPSHOT.jar .


git add gemfire-core-1.0.0-incubating-SNAPSHOT.jar
git add libthrift-0.9.2.jar
git add cdap-data-fabric-3.2.0-SNAPSHOT.jar .
git add cdap-master-3.2.0-SNAPSHOT.jar .
git add cdap-data-ampool-3.2.0-SNAPSHOT.jar .

git commit -m "Adding"
git push origin master



