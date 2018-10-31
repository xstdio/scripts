#!/bin/sh
# script to manage project folders

test() {
	echo "test func"
}

create_folders() {

	### START
	
	echo "=Creating project folder structure="
	mkdir -p '00_Archive'
	mkdir -p '10_Initiating'
	mkdir -p '20_Planning'
	mkdir -p '30_Execution'
	mkdir -p '40_Monitoring_and_Control'
	mkdir -p '50_Closure'
	echo "=1st level folders created="
	
	### subdirectories for 10_Initiating
	cd '10_Initiating'
	mkdir -p '101_Contract'
	mkdir -p '102_Proposal'
	mkdir -p '103_Vendor'
	cd ..
	echo "=10_Initiating subdirectories created="

	### subdirectories for 20_Planning
	cd '20_Planning'
	mkdir -p '201_Budget'
	mkdir -p '202_Design'
	mkdir -p '203_Project_Plan'
	mkdir -p '204_Project_Schedule'
	cd ..
	echo "=20_Planning subdirectories created="

	### subdirectories for 30_Execution
	cd '30_Execution'
	mkdir -p '301_Data'
	mkdir -p '302_Testing'
	mkdir -p '303_Implementation'
	cd ..
	echo "=30_Execution subdirectories created="

	### subdirectories for 40_Monitoring_and_Control
	cd '40_Monitoring_and_Control'
	mkdir -p '401_Deliverables'
	mkdir -p '402_Meeting_Minutes'
	mkdir -p '403_Progress_Report'
	mkdir -p '404_Risk_Register'
	cd ..
	echo "=40_Monitoring_and_Control subdirectories created="
	
	### END
}

default() {
	echo "exiting..."
}

eval "$@" || default
