# Domain Generation Algorithm Detector

The goal to rapidly research, build, and deploy a machine
learning system to detect domain names which are likely generated by malware
as randomized rendezvous points.

## The Task

Given a domain, determine whether it is a legitimate domain or created by a
DGA from malware.

The task is broken into three phases. First, you will clean, prepare, and divide
the provided training data. Second, you will train and evaluate a machine
learning (ML) model in Python. Finally, you will develop a docker image to run
your production classifier and model with a documented API (REST, gRPC,
Thrift, or similar) as a micro-service. According to your documentation, we will
be calling your service to classify a held-out dataset.
A labeled dataset has been provided within the file named ‘dga-dataset.txt’.
Since the general task of DGA detection is relatively complex, you should worry
less about the absolute performance of your ML system and focus instead on
showcasing your thought process, project organization, programming ability,
clarity of documentation, and programmatic tests.

Note: Each phase will progressively take more time. Please plan
accordingly and submit as much progress as you are able to achieve.

## Phase 1: Data Preparation

### Scenario

Your co-worker has prepared a labeled DGA dataset from a variety of sources.
However, the shared file is strange. It seems to be a ‘ctrl-A’ separated csv-like
file without a header. You are mildly annoyed, but as a data wrangler you know
you can work with anything.
The file appears to have 3 columns. It seems that the third column is likely
the class label. After learning some more about DGAs, you now know that the
primary domain is the critical part – sub-domains should be ignored completely,
and top-level domains (TLDs) should be used with caution.
Upon closer inspection, you notice that this file isn’t as clean as it first appeared.
You will need to do some cleanup before splitting into training and evaluation
subsets.

### Key Ideas
* Perform any data preparation and cleaning steps, as you deem appropriate
* Create training and evaluation subsets for your ML model development
* Use well-commented code or scripts
* Use of common data transformation tools or libraries is strongly encouraged

## Phase 2: Model Training and Evaluation

### Scenario

Your training and evaluation data is ready to train a classifier aimed at dis-
criminating between legitimate and DGA domains. You will have to decide on
any additional features to extract and which core ML classifier to utilize. Any
decisions should be tested against your designated evaluation set. You want
to train at least a reasonable baseline quickly, and don’t forget: the product
managers want to claim we have a deployed ML system ASAP! Any additional
performance tweaks, alternative classifiers, or other ideas would be great but
you know can come back to this in the future, time permitting.

### Key Ideas
* Generate any feature extractors to use for training (hint: creating these as
libraries may help when you move them to production)
* Create a baseline ML model and report at least precision and recall
* Provide any charts and/or tables you use to judge performance
* Use of common ML libraries is strongly encouraged
* Organize your code as a project with dependency requirements, libraries,
runtime scripts, and any tests
* Containerizing your environment is recommended but not required

## Phase 3: Docker Deployment and Inference API
### Scenario

You have a workable model trained and want to get the initial model deployed
to production. In your company’s new micro-service architecture, the easiest
way to deploy your new model is to provide a programmatic interface from a
docker container. This interface should accept as input domains (sub-domains
and TLDs included, identical to your training data) and return the class label
your model predicts: legitimate or DGA.

It’s time to stop malware DGAs before they can do any more harm.

### Key Ideas
* Develop an inference API as a REST, gRPC, Thrift or similar service
* Organize your code as a project with dependency requirements, libraries,
runtime scripts, and any tests
* Build as a docker image containing your application and any resources
* Provide documentation on how to build, run, and query your service