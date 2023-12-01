package main

import (
	"fmt"
	"os/exec"
	"strings"
	"strconv"
)

func main() {
	
	cmd := exec.Command("cat", "/sys/class/thermal/thermal_zone0/temp")

	// Run the command and capture the output
	stdout, err := cmd.Output()
	if err != nil {
		fmt.Println("Error executing command:", err)
		return
	}

	tempToStr := strings.TrimSpace(string(stdout))
	tempToInt, err := strconv.Atoi(tempToStr)
	if err != nil {
		fmt.Println("Error converting string to integer", err)
		return
	}

	tempToCel := float64(tempToInt) / 1000.0

	fmt.Printf("PI CPU Temperature: %.2f °C\n", tempToCel) // PI CPU Temperature: 51.61 °C
}
