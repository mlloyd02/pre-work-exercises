var myRover = {
  position: [0,0], 
  direction: 'N'
};

function goForward(rover) {
  switch(rover.direction) {
    case 'N':
      rover.position[1]++
      break;
    case 'E':
      rover.position[0]++
      break;
    case 'S':
      rover.position[1]--
      break;
    case 'W':
      rover.position[0]--
      break;
  };
}

goForward(myRover);

function goBackward(rover) {
  switch(rover.direction) {
    case 'N':
      rover.position[1]--
      break;
    case 'E':
      rover.position[0]--
      break;
    case 'S':
      rover.position[1]++
      break;
    case 'W':
      rover.position[0]++
      break;
  };
}

function turnRight(rover) {
  switch(rover.direction) {
    case 'N':
      rover.direction = 'E';
      break;
    case 'E':
      rover.direction = 'S';
      break;
    case 'S':
      rover.direction = 'W';
      break;
    case 'W':
      rover.direction = 'N';
      break;
  };
}

function turnLeft(rover) {
  switch(rover.direction) {
    case 'N':
      rover.direction = 'W';
      break;
    case 'E':
      rover.direction = 'N';
      break;
    case 'S':
      rover.direction = 'E';
      break;
    case 'W':
      rover.direction = 'S';
      break;
  };
}

function reCenter(rover) {
  if (rover.position[0] > 5) {
    rover.position[0] = rover.position[0] % 5 - 5;
  }
  if (rover.position[0] < -5) {
    rover.position[0] = rover.position[0] % 5 + 5;
  }
  if (rover.position[1] > 5) {
    rover.position[1] = rover.position[1] % 5 - 5;
  }
  if (rover.position[1] < -5) {
    rover.position[1] = rover.position[1] % 5 + 5;
  }
}

function multiCommand(rover, string) {
  var commArray = string.split('');
  for (i = 0; i < string.length; i++) {
    if (commArray[i] === 'f') {
      goForward(rover);
    }
    else if (commArray[i] === 'b') { 
      goBackward(rover);
    }
    else if (commArray[i] === 'r') {
      turnRight(rover);
    }
    else {
      turnLeft(rover);
    };
  };

  reCenter(rover);

  console.log("New Rover Direction: " + rover.direction);
  console.log("New Rover Position: [" + rover.position[0] + ", " + rover.position[1] + "]");
}