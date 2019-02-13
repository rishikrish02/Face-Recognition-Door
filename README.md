# Facial-Recognition-door
 Objective
The purpose of our research is to build a Door Access System which automatically opens the door for an authenticated person using facial
recognition. If the visitor at the door is recognized, the door will unlock or else the door remains unlocked and a notification is sent
to the owner.

 Background
Security is a wide application which most people associate with biometrics. Biometrics is a method of recognizing a person with the use
of unique physical characteristics like facial geometry, iris, voice recognition, fingerprints, hand geometry, signature etc. However,
Face recognition has various advantages as compared to other biometrics such as it requires no physical interaction on behalf of user,
it is accurate and allows for high enrolment and verification, it does not require an expert to interpret the comparison result, can
use existing infrastructure and passive identification. Face recognition is used in many broad areas such as photo editing, social
networking, access control, law enforcement, Information security, smart cards and surveillance system.

There are two types of approaches for facial recognition, one is appearance based approach and the other is a model based approach.
Appearance based approach uses the whole face region as the input data to a recognition system. The most widely used representation
of the face region is Eigen pictures, which is based on principal component analysis (PCA).Appearance based approach is further
classified into linear and nonlinear. Linear technique transforms input data from high dimensional subspace into low dimensional
subspace by linear mapping. In nonlinear methods, a low dimensional data matrix is obtained directly from a high dimensional data matrix.
The linear methods include Principal Component Analysis (PCA), Independent Component Analysis (ICA) and Linear Discriminant Analysis 
(LDA) also known as fisher’s discriminant analysis. The two nonlinear algorithms widely used are the Kernel Principal Components Analysis
(KPCA) and Kernel Fisher Analysis (KFA).Model Based Face Recognition constructs a model of the human face which can capture the facial
variations. Elastic Bunch Graph Matching is a model based algorithm used for recognizing objects or object classes in an image based on 
a graph representation extracted from other images.

In this project we use Principal Component Analysis (PCA) method for facial recognition which is a feature extraction and data 
representation technique used widely in pattern recognition and computer vision. The Eigen faces method extracts the characteristic
features on the face and represents it as a linear combination of the eigen faces obtained from the feature extraction process.
The principal components of the faces in the training set are calculated and a comparison is performed on the basis of the Euclidian
distance of the eigenvectors of the training set and the eigen face of the image. If the distance is small the person is identified or 
if the distance is too large, the person is not identified.


PROJECT DESCRIPTION AND GOALS

Description
This project aims at developing an automated door access system based on face recognition using Raspberry pi and MATLAB. 
Motion detection using sensor is performed to automatically capture any motion in front of the camera. Any captured image is compared
with the set of pre-processed images stored in the database. When a person tries to access the door, the camera clicks an image
and compares it with the images of database, if a match occurs then the system unlocks door for that particular person. When a person who
is not present in the database tries to access the door, entry is denied to that person and a notification is sent to the owner regarding
the unauthenticated access. A door mechanism has been used where the door can be unlocked only with the rotation of the motor.
The face recognition system uses Viola-Jones Algorithm for face detection, PCA to reduce the dimensionality of the image set
and K-Nearest Neighbors for classification.
 
Goals 
The project will result in a secured door access by performing face detection and face recognition with better accuracy and fast
computation to automatically unlock the door for an authenticated person. The system restricts access to an unidentified person, 
also notifies the owner through an email.


TECHNICAL SPECIFICATION

Hardware Specification
Raspberry Pi 3	
1.	SoC: Broadcom BCM2837
2.	CPU: 4× ARM Cortex-A53, 1.2GHz
3.	GPU: Broadcom Video Core IV
4.	RAM: 1GB LPDDR2 (900 MHz)
5.	Networking: 10/100 Ethernet, 2.4GHz 802.11n wireless
6.	Bluetooth: Bluetooth 4.1 Classic, Bluetooth Low Energy
7.	Storage: micro SD
8.	GPIO: 40-pin header, populated
9.	Ports: HDMI, 3.5mm analogue audio-video jack, 4× USB 2.0, Ethernet, Camera Serial Interface (CSI), Display Serial Interface (DSI)
L298 Motor Driver
1.	Operating supply voltage - Up to 46V
2.	DC current - up to 4 A
3.	Input voltage - up to 1.5 V
4.	Over temperature protection
 USB Cable (5V)
 PIR Sensor
 LAN Cable
 Door Mechanism

USB Camera
1.	 Input Voltage: Standard 3.3V ~ 5V
2.	 Video Resolution: 2.0M pixel
3.	 Supports still image capture and Video Streaming
4.	 Convert Bayer RGB to YUY2 colour space
5.	 Black Clamping-Gamma Correction
6.	 Gain and offset adjustment in RGB space
7.	 Window image statistics collection for AE and AWB

  
MATLAB with 
1.	Statistics and Machine Learning Toolbox 
    •	Used for feature selection, PCA and other dimensionality reduction methods
2.	Image processing Toolbox
    •	Used for Image transformation, image segmentation and 3D Image Processing
3.	Computer Vision Toolbox
    •	Supports Camera Calibration and object detection, feature detection and extraction
4.	Image Acquisition Toolbox
    •	Helps detect and configure hardware properties and includes background acquisition and helps connect with industrial cameras.

