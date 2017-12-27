Code book for Coursera Getting and Cleaning Data course project.

This codebook accompanies run_analysis.R and tidy_data.csv.

See the README.md file of this repository for background information on the experiment used to generate this data set..

Each row contains, for a given subject and activity, 79 averaged signal measurements.

Identifiers:
Subject represented by a number 1:30.

Activity identifier:
*WALKING: subject was walking
*WALKING_UPSTAIRS: subject was walking upstairs
*WALKING_DOWNSTAIRS: subject was walking downstairs
*SITTING: subject was sitting
*STANDING: subject was standing
*LAYING: subject was laying

"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz."

Time-domain signals

Average time-domain body acceleration:
*timeDomainBodyAccelerometerMeanX
*timeDomainBodyAccelerometerMeanY
*timeDomainBodyAccelerometerMeanZ

Standard deviation of the time-domain body acceleration:
*timeDomainBodyAccelerometerStandardDeviationX
*timeDomainBodyAccelerometerStandardDeviationY
*timeDomainBodyAccelerometerStandardDeviationZ

Average time-domain gravity acceleration:
*timeDomainGravityAccelerometerMeanX
*timeDomainGravityAccelerometerMeanY
*timeDomainGravityAccelerometerMeanZ

Standard deviation of the time-domain gravity acceleration:
*timeDomainGravityAccelerometerStandardDeviationX
*timeDomainGravityAccelerometerStandardDeviationY
*timeDomainGravityAccelerometerStandardDeviationZ

"Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz."

Average time-domain body acceleration jerk:
*timeDomainBodyAccelerometerJerkMeanX
*timeDomainBodyAccelerometerJerkMeanY
*timeDomainBodyAccelerometerJerkMeanZ

Standard deviation of the time-domain body acceleration jerk:
*timeDomainBodyAccelerometerJerkStandardDeviationX
*timeDomainBodyAccelerometerJerkStandardDeviationY
*timeDomainBodyAccelerometerJerkStandardDeviationZ

Average time-domain body angular velocity:
*timeDomainBodyGyroscopeMeanX
*timeDomainBodyGyroscopeMeanY
*timeDomainBodyGyroscopeMeanZ

Standard deviation of the time-domain body angular velocitys:
*timeDomainBodyGyroscopeStandardDeviationX
*timeDomainBodyGyroscopeStandardDeviationY
*timeDomainBodyGyroscopeStandardDeviationZ

Average time-domain body angular velocity jerk:
*timeDomainBodyGyroscopeJerkMeanX
*timeDomainBodyGyroscopeJerkMeanY
*timeDomainBodyGyroscopeJerkMeanZ

Standard deviation of the time-domain body angular velocity jerk:
*timeDomainBodyGyroscopeJerkStandardDeviationX
*timeDomainBodyGyroscopeJerkStandardDeviationY
*timeDomainBodyGyroscopeJerkStandardDeviationZ

Average and standard deviation of the time-domain magnitude of body acceleration:
*timeDomainBodyAccelerometerMagnitudeMean
*timeDomainBodyAccelerometerMagnitudeStandardDeviation

Average and standard deviation of the time-domain magnitude of gravity acceleration:
*timeDomainGravityAccelerometerMagnitudeMean
*timeDomainGravityAccelerometerMagnitudeStandardDeviation

Average and standard deviation of the time-domain magnitude of body acceleration jerk:
*timeDomainBodyAccelerometerJerkMagnitudeMean
*timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation

Average and standard deviation of the time-domain magnitude of body angular velocity:
*timeDomainBodyGyroscopeMagnitudeMean
*timeDomainBodyGyroscopeMagnitudeStandardDeviation

Average and standard deviation of the time-domain magnitude of body angular velocity jerk:
*timeDomainBodyGyroscopeJerkMagnitudeMean
*timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation

"Finally a Fast Fourier Transform (FFT) was applied to some of these signals."

Frequency-domain signals

Average frequency-domain body acceleration:
*frequencyDomainBodyAccelerometerMeanX
*frequencyDomainBodyAccelerometerMeanY
*frequencyDomainBodyAccelerometerMeanZ

Standard deviation of the frequency-domain body acceleration:
*frequencyDomainBodyAccelerometerStandardDeviationX
*frequencyDomainBodyAccelerometerStandardDeviationY
*frequencyDomainBodyAccelerometerStandardDeviationZ

Weighted average of the frequency components of the frequency-domain body acceleration:
*frequencyDomainBodyAccelerometerMeanFrequencyX
*frequencyDomainBodyAccelerometerMeanFrequencyY
*frequencyDomainBodyAccelerometerMeanFrequencyZ

Average frequency-domain body acceleration jerk :
*frequencyDomainBodyAccelerometerJerkMeanX
*frequencyDomainBodyAccelerometerJerkMeanY
*frequencyDomainBodyAccelerometerJerkMeanZ

Standard deviation of the frequency-domain body acceleration jerk :
*frequencyDomainBodyAccelerometerJerkStandardDeviationX
*frequencyDomainBodyAccelerometerJerkStandardDeviationY
*frequencyDomainBodyAccelerometerJerkStandardDeviationZ

Weighted average of the frequency components of the frequency-domain body acceleration jerk:
*frequencyDomainBodyAccelerometerJerkMeanFrequencyX
*frequencyDomainBodyAccelerometerJerkMeanFrequencyY
*frequencyDomainBodyAccelerometerJerkMeanFrequencyZ

Average frequency-domain body angular velocity:
*frequencyDomainBodyGyroscopeMeanX
*frequencyDomainBodyGyroscopeMeanY
*frequencyDomainBodyGyroscopeMeanZ

Standard deviation of the frequency-domain body angular:
*frequencyDomainBodyGyroscopeStandardDeviationX
*frequencyDomainBodyGyroscopeStandardDeviationY
*frequencyDomainBodyGyroscopeStandardDeviationZ

Weighted average of the frequency components of the frequency-domain body angular velocity:
*frequencyDomainBodyGyroscopeMeanFrequencyX
*frequencyDomainBodyGyroscopeMeanFrequencyY
*frequencyDomainBodyGyroscopeMeanFrequencyZ

Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:
*frequencyDomainBodyAccelerometerMagnitudeMean
*frequencyDomainBodyAccelerometerMagnitudeStandardDeviation
*frequencyDomainBodyAccelerometerMagnitudeMeanFrequency

Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk:
*frequencyDomainBodyAccelerometerJerkMagnitudeMean
*frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation
*frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency

Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:
*frequencyDomainBodyGyroscopeMagnitudeMean
*frequencyDomainBodyGyroscopeMagnitudeStandardDeviation
*frequencyDomainBodyGyroscopeMagnitudeMeanFrequency

Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk:
*frequencyDomainBodyGyroscopeJerkMagnitudeMean
*frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation
*frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency

Transformations

The zip file containing the source data can be found at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The following transformations to the original data set were performed:

The 6 training and test sets were merged to create one data set.
The measurements on the mean and standard deviation were retained for each measurement, and the rest of the data set was ommitted.
The activity names were changed to more descriptive names.
The variable names were replaced changed to more names using the following rules:
*Special characters were removed
*The f and t abbreviations were corrected to frequencyDomain and timeDomain
*Abbreviations Acc, Gyro, Mag, Freq, mean, and std were expanded.
*Changed BodyBody with Body.

Using the resulting data set, the mean was computed for each variable, for each activity and each subject.

This was accomplished using the included run_analysis.R.