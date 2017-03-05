# Message Audio Audacity Mixing

- Audacity 2.0.0
- *Mar. 5, 2017*


## Import WAV Files

When exported from Studio Live two tracks are created, both have to imported into Audacity

1. Open two new Audacity projects.
2. Drag the first export into one of the first Audacity project.
3. Drag the second export into the other second Audacity project.

## Stich WAV Files

1. Copy the entire first wave form in Audacity, usually five minutes worth of audio.
2. Paste the entire first wave form at the beginning of the second Audacity project.
	
	> Pressing `J` will move the cursor to the beginning of the wave form.

## Mix

1. Select the entire stereo track and convert to mono. No need for a stereo production, this will also help the final exported file size.
	
	> `Tracks` -> `Stereo Track to Mono`

2. Amplify by 60 decibles. Usually the exported WAV files are very low sounding.

	> `Effect` -> `Amplify` -> `Allow Clipping` -> 60 dB -> `OK`

### Remove Noise

To remove noise, a serious of steps will be done to: capture a noise profile, isolate the noise from the message audio, invert the isolated noise, render the two tracks together.

1. Select the mutted portion of the message. Usually around the two minute mark, when everyone is greatting eachother. No need to select all of it, just a majority of it. (This is the noise profile)
2. Get the noise profile.

	> `Effect` -> `Noise Removal` -> `Get Noise Profile`

3. Create an isolation track.

	>  `Tracks` -> `Add New` -> `Audio Track`

4. Copy message audio to the beginning of the new track.
5. Make sure the coppied track is entirely selected then isolate noise.
	
	> Select Entire new track -> `Effect` -> `Noise Removal` -> `Isolate` -> `OK`
	
	#### Noise Removal Parameters
	
	| Parameter                | Value |
	|-------------------------:|-------|
	| Noise Reduction (dB)     | 24 |
	| Sensitivity (dB)         | 0.00 |
	| Frequency smoothing (Hz) | 150 |
	| Attack/decay time (secs) | 0.15 |

6. Invert the audio, so the noise is canceled out.

	> `Effect` -> `Invert`

7. Render the two tracks together as one mono track.

	> `Tracks` -> `Mix and Render`
	
### Clip

1. Cut out the beginning of the message which is everything from the beginning to after the prayer. Clip to 0.25 seconds before the speaker starts.
2. Fade in the first 0.5 seconds

	> Select 0.5 seconds -> `Effect` -> `Fade In`

3. Cut out the end of the message which is everthing 0.25 seconds after the last spoken part.
4.  Fade out if needed.

	> Select 0.5 seconds -> `Effect` -> `Fade Out`

### Export

1. Export 

	> `File` -> `Export`

2. Name file with the following format: `message-YYYY-MM-DD.mp3`
	- `YYYY` is the year the message was recorded, such as 2017.
	- `MM` is the month the message was recorded, such as 03 for March.
	- `DD` is the day the message was recorded, such as 05 for the fifth day of the month.

3. MP3 Format

	| Option         | Value |
	|---------------:|-------|
	| Bit Rate Mode  | Variable |
	| Quality        | 8, 65-105 kbps |
	| Variable Speed | Fast |
	| Channel Mode   | Joint Stereo |

4. Tag MP3
	
	| Tag          | Value |
	|--------------|-------| 
	| Artist Name  | Encounter Vineyard Church |
	| Track Title  | *Name related to subject of message.* |
	| Album Title  | *Name of the current series or left blank.* |
	| Track Number | *Message number in series.* |
	| Year         | *Same year as in the file name* |
	| Genre        | Christianity |
