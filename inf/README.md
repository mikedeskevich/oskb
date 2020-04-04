# Infinity Program

I think this is my favorite pattern for generating programs that work for the everyday athlete.  That is, someone who needs strength training for their life, not someone who trains strength for strength's sake. I merged ideas that I found from the "Unity Program " from a commenter on StrongFirst and from the "Cruise Control" program from Blake at Wild Goose Fitness.  

I call this the infinity program because you can continue it forever.  I ran an 18-week version of this at the gym - my longest cycle ever! - and no one revolted from the boredom.  

## Format

The basic idea is that there are three days, we use Hinge, Squat, and Press as our days, and 5 intensities giving 15 workouts.  For 5-days a week, that's a 3-week cycle.  The Hinge, Squat, Press days cycle in that order indefinitely.  The 5 intensities are selected at the beginning of the cycle and are all independent.  That is, there is an independent wave for the Hinge days, Squat days, and Press days.

For example, you generate workouts for 

```
H1, H2, H3, H4, H5
S1, S2, S3, S4, S5
P1, P2, P3, P4, P5
```

Randomly permute each one independently

```
H2, H1, H4, H5, H3
P3, P4, P1, P5, P2
S5, S2, S1, S3, S4
```

And then interlace them for 15 workouts.

```
H2, P3, S5, H1, P4, S2, H4, P1, S1, H5, P5, S3, H3, P2, S4
```

If you pick good movement and honor the "delta 20" rule, you have a very easy way to generate wavy programs and keep engaged.

## Implementation Details

My way of generating programs here is to have 4 movement each day. Typically, I do a Kettlebell starter that's in the spirit of the H,S,P movement.  Jump to a Barbell Olympic lift with reps and weight chosen for skill development. Hit the main barbell movement in the spirit of H,S,P and finish with a 10-ish minute AGT kettlebell segment.  I put the first two (Kettlebell starter and Olympic lift) out of phase with the second two (barbell and AGT). That is, if H1 is the heavy day on the first two, it will be the light day on the last two, and vise versa.  A number of implementation options are below. These are just ideas, but 4 movements a day seems to work well, and if you pick them right, you get a great program that you can do every day without beating you up. Enough waviness that you get a stimulus, but no day crushes you.  Frequency and lots of practice over intensity.

## Big 3

This is my choice of movements for "The Big 3" movements: Squat, Bench Press, Deadlift

| Hinge 1                 | Hinge  2                 | Hinge 3                 | Hinge  4                 | Hinge  5                 |
| ----------------------- | ------------------------ | ----------------------- | ------------------------ | ------------------------ |
| Double  Front Squat 5x5 | Double  Front Squat 5x4  | Double  Front Squat 4x5 | Double  Front Squat 5x3  | Double  Front Squat 3x5  |
| Deadlift  3x1 (H)       | Deadlift  10x1 (M)       | Deadlift  7x1 (M)       | Deadlift  12x1 (L)       | Deadlift  10x1 (L)       |
| Clean  & Jerk 5x(1,2,3) | Clean  & Press 5x(1,2,3) | Clean  & Jerk 3x(1,2,3) | Clean  & Press 3x(1,2,3) | Clean  & Press 2x(1,2,3) |
| Farmer's  Carry 3       | Double  Rack Carry 3     | Rack  Carry 3x(1+1)     | Suitcase  Carry 3x(1+1)  | Overhead  Carry 3x(1+1)  |

| Squat  1       | Squat 2              | Squat 3              | Squat 4                | Squat 5          |
| -------------- | -------------------- | -------------------- | ---------------------- | ---------------- |
| TGU  5x(1+1)   | TGU  5x(1+1)         | TGU  3x(1+1)         | TGU  3x(1+1)           | TGU  2x(1+1)     |
| Squat  6x1 (H) | Squat  5x2 (M)       | Squat  3x3 (M)       | Squat  2x5 (M)         | Squat  5,3,2 (L) |
| VHS  4x20      | 2A  Swing 10x10/1:00 | 1A  Swing 10x10/1:00 | DS  2A Swing 10x5/1:00 | 2B  Swing 4x8    |
| Pull-up  5x3   | Pull-up  8x2         | Pull-up  15x1        | Pull-up  12x1          | Pull-up  10x1    |

| Press  1                        | Press 2                  | Press 3                         | Press 4                  | Press 5                  |
| ------------------------------- | ------------------------ | ------------------------------- | ------------------------ | ------------------------ |
| Double  Clean & Squat 5x(1,2,3) | Clean  & Squat 5x(1,2,3) | Double  Clean & Squat 3x(1,2,3) | Clean  & Squat 3x(1,2,3) | Clean  & Squat 2x(1,2,3) |
| Bench  Press 6x1 (H)            | Bench  Press 5x2 (M)     | Bench  Press 3x3 (M)            | Bench  Press 2x5 (M)     | Bench  Press 5,3,2 (L)   |
| Snatch  12x3/1:00               | Snatch  10x4/1:00        | Snatch  8x5/1:00                | Snatch  6x6/1:00         | Snatch  4x10/1:00        |
| Row  5x10                       | Row  4x12                | Row  4x10                       | Row  3x12                | Row  3x10                |

### Beginner Version

This is a slightly higher volume (so you should do this lighter!) for more practice on the movements for beginners

| Hinge 1                  | Hinge  2                 | Hinge 3                  | Hinge  4                 | Hinge  5                 |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ |
| Double Front Squat 5x5   | Double  Front Squat 5x4  | Double  Front Squat 4x5  | Double  Front Squat 5x3  | Double  Front Squat 3x5  |
| Deadlift  3x1 (H)        | Deadlift  10x1 (M)       | Deadlift  7x1 (M)        | Deadlift  12x1 (L)       | Deadlift  10x1 (L)       |
| Clean  & Press 5x(2,3,5) | Clean  & Press 5x(1,2,3) | Clean  & Press 3x(2,3,5) | Clean  & Press 3x(1,2,3) | Clean  & Press 2x(1,2,3) |
| Farmer's  Carry 3        | Double  Rack Carry 3     | Rack  Carry 3x(1+1)      | Suitcase  Carry 3x(1+1)  | Overhead  Carry 3x(1+1)  |

| Squat  1       | Squat 2              | Squat 3              | Squat 4                | Squat 5          |
| -------------- | -------------------- | -------------------- | ---------------------- | ---------------- |
| TGU  5x(1+1)   | TGU  5x(1+1)         | TGU  3x(1+1)         | TGU  3x(1+1)           | TGU  2x(1+1)     |
| Squat  6x1 (H) | Squat  5x2 (M)       | Squat  3x3 (M)       | Squat  2x5 (M)         | Squat  5,3,2 (L) |
| VHS  4x20      | 2A  Swing 10x10/1:00 | 1A  Swing 10x10/1:00 | DS  2A Swing 10x5/1:00 | 2B  Swing 4x8    |
| Pullup  15x1   | Pullup  12x1         | Pull-up  10x1        | Pull-up  8x1           | Pull-up  5x1     |

| Press  1                 | Press 2                  | Press 3                  | Press 4                  | Press 5                  |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ |
| Clean  & Squat 5x(2,3,5) | Clean  & Squat 5x(1,2,3) | Clean  & Squat 3x(2,3,5) | Clean  & Squat 3x(1,2,3) | Clean  & Squat 2x(1,2,3) |
| Bench  Press 6x1 (H)     | Bench  Press 5x2 (M)     | Bench  Press 3x3 (M)     | Bench  Press 2x5 (M)     | Bench  Press 5,3,2 (L)   |
| Snatch  12x3/1:00        | Snatch  10x4/1:00        | Snatch  8x5/1:00         | Snatch  6x6/1:00         | Snatch  4x10/1:00        |
| Row  5x10                | Row  4x12                | Row  4x10                | Row  3x12                | Row  3x10                |

## Alternate 3

This is like the "Big 3" but has Squat swapped for Front Squat and Press swapped for Bench Press

| Hinge 1                | Hinge  2                | Hinge 3                 | Hinge  4                | Hinge  5                |
| ---------------------- | ----------------------- | ----------------------- | ----------------------- | ----------------------- |
| Double Front Squat 5x5 | Double  Front Squat 5x4 | Double  Front Squat 4x5 | Double  Front Squat 5x3 | Double  Front Squat 3x5 |
| Deadlift  3x1 (H)      | Deadlift  10x1 (M)      | Deadlift  7x1 (M)       | Deadlift  12x1 (L)      | Deadlift  10x1 (L)      |
| Floor  Press 5x(2,3,5) | Floor  Press 5x(1,2,3)  | Floor  Press 3x(2,3,5)  | Floor  Press 3x(1,2,3)  | Floor  Press 2x(1,2,3)  |
| Farmer's  Carry 3      | Double  Rack Carry 3    | Rack  Carry 3x(1+1)     | Suitcase  Carry 3x(1+1) | Overhead  Carry 3x(1+1) |

| Squat  1             | Squat 2              | Squat 3              | Squat 4                | Squat 5                |
| -------------------- | -------------------- | -------------------- | ---------------------- | ---------------------- |
| TGU  5x(1+1)         | TGU  5x(1+1)         | TGU  3x(1+1)         | TGU  3x(1+1)           | TGU  2x(1+1)           |
| Front  Squat 6x1 (H) | Front  Squat 5x2 (M) | Front  Squat 3x3 (M) | Front  Squat 2x5 (M)   | Front  Squat 5,3,2 (L) |
| VHS  4x20            | 2A  Swing 10x10/1:00 | 1A  Swing 10x10/1:00 | DS  2A Swing 10x5/1:00 | 2B  Swing 4x8          |
| Pull-up  5x3         | Pull-up  8x2         | Pull-up  15x1        | Pull-up  12x1          | Pull-up  10x1          |

| Press  1                        | Press 2                         | Press 3                         | Press 4                         | Press 5                         |
| ------------------------------- | ------------------------------- | ------------------------------- | ------------------------------- | ------------------------------- |
| Double  Clean & Squat 5x(1,2,3) | Double  Clean & Squat 5x(1,2,3) | Double  Clean & Squat 3x(1,2,3) | Double  Clean & Squat 3x(1,2,3) | Double  Clean & Squat 2x(1,2,3) |
| Press  6x1 (H)                  | Press  5x2 (M)                  | Press  3x3 (M)                  | Press  2x5 (M)                  | Press  5,3,2 (L)                |
| Snatch  12x3/1:00               | Snatch  10x4/1:00               | Snatch  8x5/1:00                | Snatch  6x6/1:00                | Snatch  4x10/1:00               |
| Row  5x10                       | Row  4x12                       | Row  4x10                       | Row  3x12                       | Row  3x10                       |

## Olympic

This is the version for the quick lifts

| C&J 1                    | C&J  2                    | C&J 3                     | C&J  4                    | C&J  5                    |
| ------------------------ | ------------------------- | ------------------------- | ------------------------- | ------------------------- |
| Double Clean & Press 5x5 | Double  Clean & Press 5x4 | Double  Clean & Press 4x5 | Double  Clean & Press 5x3 | Double  Clean & Press 3x5 |
| Clean  & Jerk 3x1 (H)    | Clean  & Jerk 10x1 (M)    | Clean  & Jerk 7x1 (M)     | Clean  & Jerk 12x1 (L)    | Clean  & Jerk 10x1 (L)    |
| Double  Front Squat 5x5  | Double  Front Squat 5x4   | Double  Front Squat 4x5   | Double  Front Squat 5x3   | Double  Front Squat 3x5   |
| Farmer's  Carry 3        | Double  Rack Carry 3      | Rack  Carry 3x(1+1)       | Suitcase  Carry 3x(1+1)   | Overhead  Carry 3x(1+1)   |

| Snatch  1       | Snatch 2             | Snatch 3             | Snatch 4               | Snatch 5          |
| --------------- | -------------------- | -------------------- | ---------------------- | ----------------- |
| TGU  5x(1+1)    | TGU  5x(1+1)         | TGU  3x(1+1)         | TGU  3x(1+1)           | TGU  2x(1+1)      |
| Snatch  6x1 (H) | Snatch  5x2 (M)      | Snatch  3x3 (M)      | Snatch  2x5 (M)        | Snatch  5,3,2 (L) |
| VHS  4x20       | 2A  Swing 10x10/1:00 | 1A  Swing 10x10/1:00 | DS  2A Swing 10x5/1:00 | 2B  Swing 4x8     |
| Pull-up  5x3    | Pull-up  8x2         | Pull-up  15x1        | Pull-up  12x1          | Pull-up  10x1     |

| Clean  1                        | Clean 2                         | Clean 3                         | Clean 4                         | Clean 5                         |
| ------------------------------- | ------------------------------- | ------------------------------- | ------------------------------- | ------------------------------- |
| Double  Clean & Squat 5x(1,2,3) | Double  Clean & Squat 5x(1,2,3) | Double  Clean & Squat 3x(1,2,3) | Double  Clean & Squat 3x(1,2,3) | Double  Clean & Squat 2x(1,2,3) |
| Clean  6x1 (H)                  | Clean  5x2 (M)                  | Clean  3x3 (M)                  | Clean  2x5 (M)                  | Clean  5,3,2 (L)                |
| Snatch  12x3/1:00               | Snatch  10x4/1:00               | Snatch  8x5/1:00                | Snatch  6x6/1:00                | Snatch  4x10/1:00               |
| Row  5x10                       | Row  4x12                       | Row  4x10                       | Row  3x12                       | Row  3x10                       |

## Power-Olympic 1

A combination of the power lifts and the Olympic lifts.  This variant I've used in class a lot.

| Hinge 1            | Hinge  2               | Hinge 3              | Hinge  4             | Hinge  5          |
| ------------------ | ---------------------- | -------------------- | -------------------- | ----------------- |
| TGU 5x(1+1)        | TGU  5x(1+1)           | TGU  3x(1+1)         | TGU  3x(1+1)         | TGU  2x(1+1)      |
| Snatch  6x1 (H)    | Snatch  5x2 (M)        | Snatch  3x3 (M)      | Snatch  2x5 (M)      | Snatch  5,3,2 (L) |
| Deadlift  10x1 (L) | Deadlift  12x1 (L)     | Deadlift  7x1 (M)    | Deadlift  10x1 (M)   | Deadlift  3x1 (H) |
| 2B  Swing 6x6      | DS  2A Swing 10x5/1:00 | 1A  Swing 10x10/1:00 | 2A  Swing 10x10/1:00 | VHS  4x20         |

| Squat  1                        | Squat 2                         | Squat 3                         | Squat 4                         | Squat 5                         |
| ------------------------------- | ------------------------------- | ------------------------------- | ------------------------------- | ------------------------------- |
| Double  Clean & Squat 5x(1,2,3) | Double  Clean & Squat 5x(1,2,3) | Double  Clean & Squat 3x(1,2,3) | Double  Clean & Squat 3x(1,2,3) | Double  Clean & Squat 2x(1,2,3) |
| Clean  6x1 (H)                  | Clean  5x2 (M)                  | Clean  3x3 (M)                  | Clean  2x5 (M)                  | Clean  5,3,2 (L)                |
| Squat  5,3,2 (L)                | Squat  2x5 (M)                  | Squat  3x3 (M)                  | Squat  5x2 (M)                  | Squat  6x1 (H)                  |
| Snatch  6x10/1:00               | Snatch  8x6/1:00                | Snatch  10x5/1:00               | Snatch  10x(4+4)/1:00           | Snatch  10x(3+3)/1:00           |

| Press  1                | Press 2                 | Press 3                | Press 4                | Press 5                |
| ----------------------- | ----------------------- | ---------------------- | ---------------------- | ---------------------- |
| Floor  Press 5x(2,3,5)  | Floor  Press 5x(1,2,3)  | Floor  Press 3x(2,3,5) | Floor  Press 3x(1,2,3) | Floor  Press 2x(1,2,3) |
| Clean  & Jerk 3x1 (H)   | Clean  & Jerk 10x1 (M)  | Clean  & Jerk 7x1 (M)  | Clean  & Jerk 12x1 (L) | Clean  & Jerk 10x1 (L) |
| Press  5,3,2 (L)        | Press  2x5 (M)          | Press  3x3 (M)         | Press  5x2 (M)         | Press  6x1 (H)         |
| Overhead  Carry 3x(1+1) | Suitcase  Carry 3x(1+1) | Rack  Carry 3x(1+1)    | Double  Rack Carry 3   | Farmer's  Carry 3      |

## ## Power-Olympic 2

Another variant using Front Squats and Bench Press

| Hinge 1            | Hinge  2               | Hinge 3              | Hinge  4             | Hinge  5          |
| ------------------ | ---------------------- | -------------------- | -------------------- | ----------------- |
| TGU 5x(1+1)        | TGU  5x(1+1)           | TGU  3x(1+1)         | TGU  3x(1+1)         | TGU  2x(1+1)      |
| Snatch  6x1 (H)    | Snatch  5x2 (M)        | Snatch  3x3 (M)      | Snatch  2x5 (M)      | Snatch  5,3,2 (L) |
| Deadlift  10x1 (L) | Deadlift  12x1 (L)     | Deadlift  7x1 (M)    | Deadlift  10x1 (M)   | Deadlift  3x1 (H) |
| 2B  Swing 6x6      | DS  2A Swing 10x5/1:00 | 1A  Swing 10x10/1:00 | 2A  Swing 10x10/1:00 | VHS  4x20         |

| Squat  1                        | Squat 2                         | Squat 3                         | Squat 4                         | Squat 5                         |
| ------------------------------- | ------------------------------- | ------------------------------- | ------------------------------- | ------------------------------- |
| Double  Clean & Squat 5x(1,2,3) | Double  Clean & Squat 5x(1,2,3) | Double  Clean & Squat 3x(1,2,3) | Double  Clean & Squat 3x(1,2,3) | Double  Clean & Squat 2x(1,2,3) |
| Clean  6x1 (H)                  | Clean  5x2 (M)                  | Clean  3x3 (M)                  | Clean  2x5 (M)                  | Clean  5,3,2 (L)                |
| Front  Squat 5,3,2 (L)          | Front  Squat 2x5 (M)            | Front  Squat 3x3 (M)            | Front  Squat 5x2 (M)            | Front  Squat 6x1 (H)            |
| Snatch  4x10/1:00               | Snatch  6x6/1:00                | Snatch  8x5/1:00                | Snatch  10x4/1:00               | Snatch  12x3/1:00               |

| Press  1                 | Press 2                  | Press 3                  | Press 4                  | Press 5                  |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ |
| Clean  & Press 5x(2,3,5) | Clean  & Press 5x(1,2,3) | Clean  & Press 3x(2,3,5) | Clean  & Press 3x(1,2,3) | Clean  & Press 2x(1,2,3) |
| Clean  & Jerk 3x1 (H)    | Clean  & Jerk 10x1 (M)   | Clean  & Jerk 7x1 (M)    | Clean  & Jerk 12x1 (L)   | Clean  & Jerk 10x1 (L)   |
| Bench  Press 5,3,2 (L)   | Bench  Press 2x5 (M)     | Bench  Press 3x3 (M)     | Bench  Press 5x2 (M)     | Bench  Press 6x1 (H)     |
| Pull-up  5x3             | Pull-up  8x2             | Pull-up  15x1            | Pull-up  12x1            | Pull-up  10x1            |

## Six-Week Program

If you use alternate Big 3 and Alternate 3, or Power-Olympic 1 and Power-Olympic 2, you can easily generate a 6-week program. The way I do it is to generate each program independently, and then do H, S, P from program 1 for days 1, 2, and 3, and then H, S, P for program 2 for days 4, 5, 6 and then repeat. That gives you 6 weeks and lots of practice.  

For my 18-week program that I did at the gym, I modified Power-Olympic 1&2 to have a High, Medium, and Low volume and then rand each 6-week program in succession from High to Low in a classic peaking progression.  Here are the progressions I actually used:

### Power-Olympic 1 High Volume

| Hinge 1            | Hinge  2               | Hinge 3              | Hinge  4             | Hinge  5          |
| ------------------ | ---------------------- | -------------------- | -------------------- | ----------------- |
| TGU 5x(1+1)        | TGU  5x(1+1)           | TGU  3x(1+1)         | TGU  3x(1+1)         | TGU  2x(1+1)      |
| Snatch  6x1 (H)    | Snatch  5x2 (M)        | Snatch  3x3 (M)      | Snatch  2x5 (M)      | Snatch  5,3,2 (L) |
| Deadlift  10x3 (L) | Deadlift  12x3 (L)     | Deadlift  7x3 (M)    | Deadlift  10x3 (M)   | Deadlift  3x3 (H) |
| 2B  Swing 6x6      | DS  2A Swing 10x5/1:00 | 1A  Swing 10x10/1:00 | 2A  Swing 10x10/1:00 | VHS  4x20         |

| Squat  1                  | Squat 2                   | Squat 3                   | Squat 4                   | Squat 5                    |
| ------------------------- | ------------------------- | ------------------------- | ------------------------- | -------------------------- |
| Double  Clean & Squat 6x5 | Double  Clean & Squat 5x5 | Double  Clean & Squat 4x6 | Double  Clean & Squat 3x8 | Double  Clean & Squat 2x10 |
| Clean  6x1 (H)            | Clean  5x2 (M)            | Clean  3x3 (M)            | Clean  2x5 (M)            | Clean  5,3,2 (L)           |
| Squat  4x10 (L)           | Squat  4x8 (M)            | Squat  3x10 (M)           | Squat  3x8 (M)            | Squat  2x10 (H)            |
| Snatch  6x10/1:00         | Snatch  8x6/1:00          | Snatch  10x5/1:00         | Snatch  10x(4+4)/1:00     | Snatch  10x(3+3)/1:00      |

| Press  1                | Press 2               | Press 3                | Press 4                | Press 5                  |
| ----------------------- | --------------------- | ---------------------- | ---------------------- | ------------------------ |
| Floor  Press 5x(5+5)    | Floor  Press 4x(6+6)  | Floor  Press 3x(8+8)   | Floor  Press 2x(10+10) | Clean  & Press 2x(1,2,3) |
| Clean  & Jerk 10x1 (M)  | Clean  & Jerk 7x1 (M) | Clean  & Jerk 12x1 (L) | Clean  & Jerk 10x1 (L) | Clean  & Jerk 10x1 (L)   |
| Press  4x8 (M)          | Press  3x10 (M)       | Press  3x8 (M)         | Press  2x10 (H)        | Bench  Press 6x1 (H)     |
| Suitcase  Carry 3x(1+1) | Rack  Carry 3x(1+1)   | Double  Rack Carry 3   | Farmer's  Carry 3      | Pull-up  10x1            |

### Power-Olympic 2 High Volume

| Hinge 1            | Hinge  2               | Hinge 3              | Hinge  4             | Hinge  5          |
| ------------------ | ---------------------- | -------------------- | -------------------- | ----------------- |
| TGU 5x(1+1)        | TGU  5x(1+1)           | TGU  3x(1+1)         | TGU  3x(1+1)         | TGU  2x(1+1)      |
| Snatch  6x1 (H)    | Snatch  5x2 (M)        | Snatch  3x3 (M)      | Snatch  2x5 (M)      | Snatch  5,3,2 (L) |
| Deadlift  10x3 (L) | Deadlift  12x3 (L)     | Deadlift  7x3 (M)    | Deadlift  10x3 (M)   | Deadlift  3x3 (H) |
| 2B  Swing 6x6      | DS  2A Swing 10x5/1:00 | 1A  Swing 10x10/1:00 | 2A  Swing 10x10/1:00 | VHS  4x20         |

| Squat  1              | Squat 2              | Squat 3               | Squat 4              | Squat 5               |
| --------------------- | -------------------- | --------------------- | -------------------- | --------------------- |
| Goblet  Squat 6x5     | Goblet  Squat 5x5    | Goblet  Squat 4x6     | Goblet  Squat 3x8    | Goblet  Squat 2x10    |
| Clean  6x1 (H)        | Clean  5x2 (M)       | Clean  3x3 (M)        | Clean  2x5 (M)       | Clean  5,3,2 (L)      |
| Front  Squat 4x10 (L) | Front  Squat 4x8 (M) | Front  Squat 3x10 (M) | Front  Squat 3x8 (M) | Front  Squat 2x10 (H) |
| Snatch  4x10/1:00     | Snatch  6x6/1:00     | Snatch  8x5/1:00      | Snatch  10x4/1:00    | Snatch  12x3/1:00     |

| Press  1              | Press 2                | Press 3               | Press 4                | Press 5                |
| --------------------- | ---------------------- | --------------------- | ---------------------- | ---------------------- |
| Press  6x(5+5)        | Press  5x(5+5)         | Press  4x(6+6)        | Press  3x(8+8)         | Press  2x(10+10)       |
| Clean  & Jerk 3x1 (H) | Clean  & Jerk 10x1 (M) | Clean  & Jerk 7x1 (M) | Clean  & Jerk 12x1 (L) | Clean  & Jerk 10x1 (L) |
| Bench  Press 4x10 (L) | Bench  Press 4x8 (M)   | Bench  Press 3x10 (M) | Bench  Press 3x8 (M)   | Bench  Press 2x10 (H)  |
| Pull-up  5x3          | Pull-up  8x2           | Pull-up  15x1         | Pull-up  12x1          | Pull-up  10x1          |

### Power-Olympic 1 Medium Volume

| Hinge 1            | Hinge  2               | Hinge 3              | Hinge  4             | Hinge  5          |
| ------------------ | ---------------------- | -------------------- | -------------------- | ----------------- |
| TGU 5x(1+1)        | TGU  5x(1+1)           | TGU  3x(1+1)         | TGU  3x(1+1)         | TGU  2x(1+1)      |
| Snatch  6x1 (H)    | Snatch  5x2 (M)        | Snatch  3x3 (M)      | Snatch  2x5 (M)      | Snatch  5,3,2 (L) |
| Deadlift  10x2 (L) | Deadlift  12x2 (L)     | Deadlift  7x2 (M)    | Deadlift  10x2 (M)   | Deadlift  3x2 (H) |
| 2B  Swing 6x6      | DS  2A Swing 10x5/1:00 | 1A  Swing 10x10/1:00 | 2A  Swing 10x10/1:00 | VHS  4x20         |

| Squat  1                | Squat 2                 | Squat 3                 | Squat 4                 | Squat 5                 |
| ----------------------- | ----------------------- | ----------------------- | ----------------------- | ----------------------- |
| Double  Front Squat 5x5 | Double  Front Squat 4x5 | Double  Front Squat 3x6 | Double  Front Squat 2x8 | Double  Front Squat 2x5 |
| Clean  6x1 (H)          | Clean  5x2 (M)          | Clean  3x3 (M)          | Clean  2x5 (M)          | Clean  5,3,2 (L)        |
| Squat  4x6 (L)          | Squat  4x4 (M)          | Squat  3x6 (M)          | Squat  3x4 (M)          | Squat  2x6 (H)          |
| Snatch  6x10/1:00       | Snatch  8x6/1:00        | Snatch  10x5/1:00       | Snatch  10x(4+4)/1:00   | Snatch  10x(3+3)/1:00   |

| Press  1                | Press 2                 | Press 3               | Press 4                | Press 5                |
| ----------------------- | ----------------------- | --------------------- | ---------------------- | ---------------------- |
| Floor  Press 4x(5+5)    | Floor  Press 3x(5+5)    | Floor  Press 4x(4+4)  | Floor  Press 3x(6+6)   | Floor  Press 2x(8+8)   |
| Clean  & Jerk 3x1 (H)   | Clean  & Jerk 10x1 (M)  | Clean  & Jerk 7x1 (M) | Clean  & Jerk 12x1 (L) | Clean  & Jerk 10x1 (L) |
| Press  4x6 (L)          | Press  4x4 (M)          | Press  3x6 (M)        | Press  3x4 (M)         | Press  2x6 (H)         |
| Overhead  Carry 3x(1+1) | Suitcase  Carry 3x(1+1) | Rack  Carry 3x(1+1)   | Double  Rack Carry 3   | Farmer's  Carry 3      |

### Power-Olympic 2 Medium Volume

| Hinge 1            | Hinge  2               | Hinge 3              | Hinge  4             | Hinge  5          |
| ------------------ | ---------------------- | -------------------- | -------------------- | ----------------- |
| TGU 5x(1+1)        | TGU  5x(1+1)           | TGU  3x(1+1)         | TGU  3x(1+1)         | TGU  2x(1+1)      |
| Snatch  6x1 (H)    | Snatch  5x2 (M)        | Snatch  3x3 (M)      | Snatch  2x5 (M)      | Snatch  5,3,2 (L) |
| Deadlift  10x2 (L) | Deadlift  12x2 (L)     | Deadlift  7x2 (M)    | Deadlift  10x2 (M)   | Deadlift  3x2 (H) |
| 2B  Swing 6x6      | DS  2A Swing 10x5/1:00 | 1A  Swing 10x10/1:00 | 2A  Swing 10x10/1:00 | VHS  4x20         |

| Squat  1             | Squat 2              | Squat 3              | Squat 4              | Squat 5              |
| -------------------- | -------------------- | -------------------- | -------------------- | -------------------- |
| Goblet  Squat 5x5    | Goblet  Squat 4x5    | Goblet  Squat 3x6    | Goblet  Squat 2x8    | Goblet  Squat 2x5    |
| Clean  6x1 (H)       | Clean  5x2 (M)       | Clean  3x3 (M)       | Clean  2x5 (M)       | Clean  5,3,2 (L)     |
| Front  Squat 4x6 (L) | Front  Squat 4x4 (M) | Front  Squat 3x6 (M) | Front  Squat 3x4 (M) | Front  Squat 2x6 (H) |
| Snatch  4x10/1:00    | Snatch  6x6/1:00     | Snatch  8x5/1:00     | Snatch  10x4/1:00    | Snatch  12x3/1:00    |

| Press  1              | Press 2                | Press 3               | Press 4                | Press 5                |
| --------------------- | ---------------------- | --------------------- | ---------------------- | ---------------------- |
| Double  Press 4x5     | Double  Press 3x5      | Double  Press 4x4     | Double  Press 3x6      | Double  Press 2x8      |
| Clean  & Jerk 3x1 (H) | Clean  & Jerk 10x1 (M) | Clean  & Jerk 7x1 (M) | Clean  & Jerk 12x1 (L) | Clean  & Jerk 10x1 (L) |
| Bench  Press 4x6 (L)  | Bench  Press 4x4 (M)   | Bench  Press 3x6 (M)  | Bench  Press 3x4 (M)   | Bench  Press 2x6 (H)   |
| Pull-up  5x3          | Pull-up  8x2           | Pull-up  15x1         | Pull-up  12x1          | Pull-up  10x1          |

### Power-Olympic 1 Low Volume

| Hinge 1            | Hinge  2               | Hinge 3              | Hinge  4             | Hinge  5          |
| ------------------ | ---------------------- | -------------------- | -------------------- | ----------------- |
| TGU 5x(1+1)        | TGU  5x(1+1)           | TGU  3x(1+1)         | TGU  3x(1+1)         | TGU  2x(1+1)      |
| Snatch  6x1 (H)    | Snatch  5x2 (M)        | Snatch  3x3 (M)      | Snatch  2x5 (M)      | Snatch  5,3,2 (L) |
| Deadlift  10x1 (L) | Deadlift  12x1 (L)     | Deadlift  7x1 (M)    | Deadlift  10x1 (M)   | Deadlift  3x1 (H) |
| 2B  Swing 6x6      | DS  2A Swing 10x5/1:00 | 1A  Swing 10x10/1:00 | 2A  Swing 10x10/1:00 | VHS  4x20         |

| Squat  1          | Squat 2           | Squat 3           | Squat 4               | Squat 5               |
| ----------------- | ----------------- | ----------------- | --------------------- | --------------------- |
| Heavy  Swing 3x20 | Heavy  Swing 3x15 | Heavy  Swing 2x20 | Heavy  Swing 2x15     | Heavy  Swing 1x25     |
| Clean  6x1 (H)    | Clean  5x2 (M)    | Clean  3x3 (M)    | Clean  2x5 (M)        | Clean  5,3,2 (L)      |
| Squat  4x4 (L)    | Squat  4x3 (M)    | Squat  3x4 (M)    | Squat  3x3 (M)        | Squat  2x3 (H)        |
| Snatch  6x10/1:00 | Snatch  8x6/1:00  | Snatch  10x5/1:00 | Snatch  10x(4+4)/1:00 | Snatch  10x(3+3)/1:00 |

| Press  1                | Press 2                 | Press 3               | Press 4                | Press 5                |
| ----------------------- | ----------------------- | --------------------- | ---------------------- | ---------------------- |
| Floor  Press 4x(5+5)    | Floor  Press 3x(5+5)    | Floor  Press 4x(4+4)  | Floor  Press 3x(6+6)   | Floor  Press 2x(8+8)   |
| Clean  & Jerk 3x1 (H)   | Clean  & Jerk 10x1 (M)  | Clean  & Jerk 7x1 (M) | Clean  & Jerk 12x1 (L) | Clean  & Jerk 10x1 (L) |
| Press  4x4 (L)          | Press  4x3 (M)          | Press  3x4 (M)        | Press  3x3 (M)         | Press  2x3 (H)         |
| Overhead  Carry 3x(1+1) | Suitcase  Carry 3x(1+1) | Rack  Carry 3x(1+1)   | Double  Rack Carry 3   | Farmer's  Carry 3      |

### Power-Olympic 2 Low Volume

| Hinge 1            | Hinge  2               | Hinge 3              | Hinge  4             | Hinge  5          |
| ------------------ | ---------------------- | -------------------- | -------------------- | ----------------- |
| TGU 5x(1+1)        | TGU  5x(1+1)           | TGU  3x(1+1)         | TGU  3x(1+1)         | TGU  2x(1+1)      |
| Snatch  6x1 (H)    | Snatch  5x2 (M)        | Snatch  3x3 (M)      | Snatch  2x5 (M)      | Snatch  5,3,2 (L) |
| Deadlift  10x1 (L) | Deadlift  12x1 (L)     | Deadlift  7x1 (M)    | Deadlift  10x1 (M)   | Deadlift  3x1 (H) |
| 2B  Swing 6x6      | DS  2A Swing 10x5/1:00 | 1A  Swing 10x10/1:00 | 2A  Swing 10x10/1:00 | VHS  4x20         |

| Squat  1                 | Squat 2                   | Squat 3                | Squat 4                 | Squat 5                |
| ------------------------ | ------------------------- | ---------------------- | ----------------------- | ---------------------- |
| Walking  Lunge 3x(10+10) | Tactical  Lunge 3x(10+10) | Walking  Lunge 3x(8+8) | Tactical  Lunge 3x(8+8) | Walking  Lunge 3x(6+6) |
| Clean  6x1 (H)           | Clean  5x2 (M)            | Clean  3x3 (M)         | Clean  2x5 (M)          | Clean  5,3,2 (L)       |
| Front  Squat 4x4 (L)     | Front  Squat 4x3 (M)      | Front  Squat 3x4 (M)   | Front  Squat 3x3 (M)    | Front  Squat 2x3 (H)   |
| Snatch  4x10/1:00        | Snatch  6x6/1:00          | Snatch  8x5/1:00       | Snatch  10x4/1:00       | Snatch  12x3/1:00      |

| Press  1               | Press 2                | Press 3                | Press 4                | Press 5                |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| Double  Push Press 4x5 | Double  Push Press 3x5 | Double  Push Press 4x4 | Double  Push Press 3x6 | Double  Push Press 2x8 |
| Clean  & Jerk 3x1 (H)  | Clean  & Jerk 10x1 (M) | Clean  & Jerk 7x1 (M)  | Clean  & Jerk 12x1 (L) | Clean  & Jerk 10x1 (L) |
| Bench  Press 4x4 (L)   | Bench  Press 4x3 (M)   | Bench  Press 3x4 (M)   | Bench  Press 3x3 (M)   | Bench  Press 2x3 (H)   |
| Pull-up  5x3           | Pull-up  8x2           | Pull-up  15x1          | Pull-up  12x1          | Pull-up  10x1          |

## Beach Muscle Options

And just for fun, here's three good options for the beach muscles, when you want to look good.

### Beach Option 1

| Hinge 1           | Hinge  2                   | Hinge 3                    | Hinge  4                   | Hinge  5                                   |
| ----------------- | -------------------------- | -------------------------- | -------------------------- | ------------------------------------------ |
| TGU 5x(1+1)       | TGU  5x(1+1)               | TGU  3x(1+1)               | TGU  3x(1+1)               | TGU  2x(1+1)                               |
| Snatch  6x1 (H)   | Snatch  5x2 (M)            | Snatch  3x3 (M)            | Snatch  2x5 (M)            | Snatch  5,3,2 (L)                          |
| Deadlift  8x2x75% | Deadlift  4x3x75%, 2x3x80% | Deadlift  5x2x75%, 4x2x80% | Deadlift  4x3x75%, 2x3x85% | Deadlift  4x2x80%, 3x2x85%, 2x1x90%, 1x95% |
| 2B  Swing 4x8     | DS  2A Swing 10x5/1:00     | 1A  Swing 10x10/1:00       | 2A  Swing 10x10/1:00       | VHS  4x20                                  |

| Hinge 1           | Hinge  2                   | Hinge 3                    | Hinge  4                   | Hinge  5                                   |
| ----------------- | -------------------------- | -------------------------- | -------------------------- | ------------------------------------------ |
| TGU 5x(1+1)       | TGU  5x(1+1)               | TGU  3x(1+1)               | TGU  3x(1+1)               | TGU  2x(1+1)                               |
| Snatch  6x1 (H)   | Snatch  5x2 (M)            | Snatch  3x3 (M)            | Snatch  2x5 (M)            | Snatch  5,3,2 (L)                          |
| Deadlift  8x2x75% | Deadlift  4x3x75%, 2x3x80% | Deadlift  5x2x75%, 4x2x80% | Deadlift  4x3x75%, 2x3x85% | Deadlift  4x2x80%, 3x2x85%, 2x1x90%, 1x95% |
| 2B  Swing 4x8     | DS  2A Swing 10x5/1:00     | 1A  Swing 10x10/1:00       | 2A  Swing 10x10/1:00       | VHS  4x20                                  |

| Press  1              | Press 2                       | Press 3                       | Press 4                       | Press 5                                       |
| --------------------- | ----------------------------- | ----------------------------- | ----------------------------- | --------------------------------------------- |
| Clean  & Press 5x5    | Clean  & Press 5x4            | Clean  & Press 3x3            | Clean  & Press 2x5            | Clean  & Press 2x5                            |
| Clean  & Jerk 3x1 (H) | Clean  & Jerk 10x1 (M)        | Clean  & Jerk 7x1 (M)         | Clean  & Jerk 12x1 (L)        | Clean  & Jerk 10x1 (L)                        |
| Bench  Press 9x3x75%  | Bench  Press 3x5x75%, 2x5x80% | Bench  Press 5x3x75%, 4x3x80% | Bench  Press 4x5x75%, 2x5x85% | Bench  Press 4x3x80%, 3x3x85%, 4x1x90%, 1x95% |
| Pull-up  5x3          | Pull-up  8x2                  | Pull-up  15x1                 | Pull-up  12x1                 | Pull-up  10x1                                 |

### Beach Option 2

| Hinge 1           | Hinge  2                   | Hinge 3                    | Hinge  4                   | Hinge  5                                   |
| ----------------- | -------------------------- | -------------------------- | -------------------------- | ------------------------------------------ |
| TGU 5x(1+1)       | TGU  5x(1+1)               | TGU  3x(1+1)               | TGU  3x(1+1)               | TGU  2x(1+1)                               |
| Snatch  6x1 (H)   | Snatch  5x2 (M)            | Snatch  3x3 (M)            | Snatch  2x5 (M)            | Snatch  5,3,2 (L)                          |
| Deadlift  8x2x75% | Deadlift  4x3x75%, 2x3x80% | Deadlift  5x2x75%, 4x2x80% | Deadlift  4x3x75%, 2x3x85% | Deadlift  4x2x80%, 3x2x85%, 2x1x90%, 1x95% |
| 2B  Swing 4x8     | DS  2A Swing 10x5/1:00     | 1A  Swing 10x10/1:00       | 2A  Swing 10x10/1:00       | VHS  4x20                                  |

| Squat  1                  | Squat 2                       | Squat 3                       | Squat 4                       | Squat 5                                      |
| ------------------------- | ----------------------------- | ----------------------------- | ----------------------------- | -------------------------------------------- |
| Double  Clean & Squat 5x5 | Double  Clean & Squat 5x4     | Double  Clean & Squat 3x3     | Double  Clean & Squat 2x5     | Double  Clean & Squat 2x5                    |
| Clean  6x1 (H)            | Clean  5x2 (M)                | Clean  3x3 (M)                | Clean  2x5 (M)                | Clean  5,3,2 (L)                             |
| Front  Squat 9x3x75%      | Front  Squat 3x5x75%, 2x5x80% | Front  Squat 5x3x75%, 4x3x80% | Front  Squat 4x5x75%, 2x5x85% | Front Squat 4x3x80%, 3x3x85%, 4x1x90%, 1x95% |
| Snatch  4x10/1:00         | Snatch  6x6/1:00              | Snatch  8x5/1:00              | Snatch  10x4/1:00             | Snatch  12x3/1:00                            |

| Press  1              | Press 2                 | Press 3                 | Press 4                 | Press 5                                 |
| --------------------- | ----------------------- | ----------------------- | ----------------------- | --------------------------------------- |
| Floor  Press 5x(8+8)  | Floor  Press 5x(5+5)    | Floor  Press 3x(8+8)    | Floor  Press 3x(5+5)    | Floor  Press 2x(8+8)                    |
| Clean  & Jerk 3x1 (H) | Clean  & Jerk 10x1 (M)  | Clean  & Jerk 7x1 (M)   | Clean  & Jerk 12x1 (L)  | Clean  & Jerk 10x1 (L)                  |
| Press  9x3x75%        | Press  3x5x75%, 2x5x80% | Press  5x3x75%, 4x3x80% | Press  4x5x75%, 2x5x85% | Press  4x3x80%, 3x3x85%, 4x1x90%, 1x95% |
| Pull-up  5x3          | Pull-up  8x2            | Pull-up  15x1           | Pull-up  12x1           | Pull-up  10x1                           |

### Beach Option 3

| Hinge 1                 | Hinge  2                   | Hinge 3                    | Hinge  4                   | Hinge  5                                  |
| ----------------------- | -------------------------- | -------------------------- | -------------------------- | ----------------------------------------- |
| Double Front Squat 5x5  | Double  Front Squat 5x4    | Double  Front Squat 4x5    | Double  Front Squat 5x3    | Double  Front Squat 3x5                   |
| Deadlift  8x2x75%       | Deadlift  4x3x75%, 2x3x80% | Deadlift  5x2x75%, 4x2x80% | Deadlift  4x3x75%, 2x3x85% | Deadlift 4x2x80%, 3x2x85%, 2x1x90%, 1x95% |
| Clean  & Jerk 5x(2,3,5) | Clean  & Press 5x(1,2,3)   | Clean  & Jerk 3x(2,3,5)    | Clean  & Press 3x(1,2,3)   | Clean  & Press 2x(2,3,5)                  |
| Farmer's  Carry 3       | Double  Rack Carry 3       | Rack  Carry 3x(1+1)        | Suitcase  Carry 3x(1+1)    | Overhead  Carry 3x(1+1)                   |

| Squat  1       | Squat 2                 | Squat 3                 | Squat 4                 | Squat 5                                |
| -------------- | ----------------------- | ----------------------- | ----------------------- | -------------------------------------- |
| TGU  5x(1+1)   | TGU  5x(1+1)            | TGU  3x(1+1)            | TGU  3x(1+1)            | TGU  2x(1+1)                           |
| Squat  9x3x75% | Squat  3x5x75%, 2x5x80% | Squat  5x3x75%, 4x3x80% | Squat  4x5x75%, 2x5x85% | Squat 4x3x80%, 3x3x85%, 4x1x90%, 1x95% |
| VHS  4x20      | 2A  Swing 10x10/1:00    | 1A  Swing 10x10/1:00    | DS  2A Swing 10x5/1:00  | 2B  Swing 4x8                          |
| Pull-up  5x3   | Pull-up  8x2            | Pull-up  15x1           | Pull-up  12x1           | Pull-up  10x1                          |

| Press  1                  | Press 2                       | Press 3                       | Press 4                       | Press 5                                      |
| ------------------------- | ----------------------------- | ----------------------------- | ----------------------------- | -------------------------------------------- |
| Double  Clean & Squat 5x5 | Double  Clean & Squat 5x4     | Double  Clean & Squat 3x3     | Double  Clean & Squat 2x5     | Double  Clean & Squat 2x5                    |
| Bench  Press 9x3x75%      | Bench  Press 3x5x75%, 2x5x80% | Bench  Press 5x3x75%, 4x3x80% | Bench  Press 4x5x75%, 2x5x85% | Bench Press 4x3x80%, 3x3x85%, 4x1x90%, 1x95% |
| Snatch  12x3/1:00         | Snatch  10x4/1:00             | Snatch  8x5/1:00              | Snatch  6x6/1:00              | Snatch  4x10/1:00                            |
| Row  5x10                 | Row  4x12                     | Row  4x10                     | Row  3x12                     | Row  3x10                                    |

## Back Save Version

I created this one for a student who's back was injured (not from the gym!). This is easy on the back while also doing some specific back-strengthening movements.

| Hinge 1              | Hinge  2             | Hinge 3              | Hinge  4             | Hinge  5               |
| -------------------- | -------------------- | -------------------- | -------------------- | ---------------------- |
| TGU 5x(1+1)          | TGU  5x(1+1)         | TGU  3x(1+1)         | TGU  3x(1+1)         | TGU  2x(1+1)           |
| Bench  Press 6x1 (H) | Bench  Press 5x2 (M) | Bench  Press 3x3 (M) | Bench  Press 2x5 (M) | Bench  Press 5,3,2 (L) |
| Snatch  5x(2,3,5)    | Snatch  5x(1,2,3)    | Snatch  3x(2,3,5)    | Snatch  3x(1,2,3)    | Snatch  2x(1,2,3)      |
| Double  Rack Carry 3 | Double  Rack Carry 3 | Double  Rack Carry 3 | Double  Rack Carry 3 | Double  Rack Carry 3   |

| Squat  1                 | Squat 2                  | Squat 3                  | Squat 4                  | Squat 5                  |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ |
| TGU  5x(1+1)             | TGU  5x(1+1)             | TGU  3x(1+1)             | TGU  3x(1+1)             | TGU  2x(1+1)             |
| Belted  Squat            | Belted  Squat            | Belted  Squat            | Belted  Squat            | Belted  Squat            |
| Clean  & Press 5x(2,3,5) | Clean  & Press 5x(1,2,3) | Clean  & Press 3x(2,3,5) | Clean  & Press 3x(1,2,3) | Clean  & Press 2x(1,2,3) |
| Pullup  15x1             | Pullup  12x1             | Pull-up  10x1            | Pull-up  8x1             | Pull-up  5x1             |

| Press  1                | Press 2                  | Press 3                 | Press 4                  | Press 5                  |
| ----------------------- | ------------------------ | ----------------------- | ------------------------ | ------------------------ |
| TGU  5x(1+1)            | TGU  5x(1+1)             | TGU  3x(1+1)            | TGU  3x(1+1)             | TGU  2x(1+1)             |
| Jefferson  Curl 3x1 (H) | Jefferson  Curl 10x1 (M) | Jefferson  Curl 7x1 (M) | Jefferson  Curl 12x1 (L) | Jefferson  Curl 10x1 (L) |
| Floor  Press 5x(2,3,5)  | Floor  Press 5x(1,2,3)   | Floor  Press 3x(2,3,5)  | Floor  Press 3x(1,2,3)   | Floor  Press 2x(1,2,3)   |
| Farmer's  Carry 3       | Farmer's  Carry 3        | Farmer's  Carry 3       | Farmer's  Carry 3        | Farmer's  Carry 3        |

## Generator

TODO: include perl script and data files here to generate programs.

