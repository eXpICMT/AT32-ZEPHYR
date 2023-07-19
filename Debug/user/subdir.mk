################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../user/startup_at32f403a_407.s 

CPP_SRCS += \
../user/board.cpp \
../user/clock.cpp \
../user/handlers.cpp \
../user/main.cpp 

OBJS += \
./user/board.o \
./user/clock.o \
./user/handlers.o \
./user/main.o \
./user/startup_at32f403a_407.o 

S_DEPS += \
./user/startup_at32f403a_407.d 

CPP_DEPS += \
./user/board.d \
./user/clock.d \
./user/handlers.d \
./user/main.d 


# Each subdirectory must supply rules for building sources it contributes
user/%.o: ../user/%.cpp user/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -Og -ffunction-sections -flto -g3 -ggdb -DAT_START_F407_V1 -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F407VGT7 -DUSE_STDPERIPH_DRIVER -I"/home/expicmt/DevPrograms/Eclipse/embedcpp-2023-06/eclipse-2023-06-embedded-workspace/PERFORMANCE-TEST/user" -I"/home/expicmt/DevPrograms/Eclipse/embedcpp-2023-06/eclipse-2023-06-embedded-workspace/SYS-LIB/inc" -std=gnu++17 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

user/%.o: ../user/%.s user/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross Assembler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -Og -ffunction-sections -flto -g3 -ggdb -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


