package com.transsion.audiotagger.audio.generic;

import com.transsion.audiotagger.audio.AudioHeader;

public class GenericAudioHeader implements AudioHeader {
    private Long audioDataEndPosition;
    private Long audioDataLength;
    private Long audioDataStartPosition;
    private Integer bitRate;
    private Integer bitsPerSample;
    private Integer byteRate;
    private String encodingType;
    private Boolean isLossless;
    private Boolean isVbr = Boolean.TRUE;
    private Integer noOfChannels;
    private Long noOfSamples;
    private Integer samplingRate;
    private Double trackLength;

    @Override
    public Long getAudioDataEndPosition() {
        return this.audioDataEndPosition;
    }

    @Override
    public Long getAudioDataLength() {
        return this.audioDataLength;
    }

    @Override
    public Long getAudioDataStartPosition() {
        return this.audioDataStartPosition;
    }

    @Override
    public String getBitRate() {
        return String.valueOf(this.bitRate);
    }

    @Override
    public long getBitRateAsNumber() {
        return this.bitRate.intValue();
    }

    @Override
    public int getBitsPerSample() {
        Integer num = this.bitsPerSample;
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override
    public Integer getByteRate() {
        return this.byteRate;
    }

    public int getChannelNumber() {
        return this.noOfChannels.intValue();
    }

    @Override
    public String getChannels() {
        return String.valueOf(getChannelNumber());
    }

    @Override
    public String getEncodingType() {
        return this.encodingType;
    }

    @Override
    public String getFormat() {
        return this.encodingType;
    }

    @Override
    public Long getNoOfSamples() {
        return this.noOfSamples;
    }

    @Override
    public double getPreciseTrackLength() {
        return this.trackLength.doubleValue();
    }

    @Override
    public String getSampleRate() {
        return String.valueOf(this.samplingRate);
    }

    @Override
    public int getSampleRateAsNumber() {
        return this.samplingRate.intValue();
    }

    @Override
    public int getTrackLength() {
        return (int) Math.round(getPreciseTrackLength());
    }

    @Override
    public boolean isLossless() {
        Boolean bool = this.isLossless;
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    @Override
    public boolean isVariableBitRate() {
        Boolean bool = this.isVbr;
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public void setAudioDataEndPosition(Long l) {
        this.audioDataEndPosition = l;
    }

    public void setAudioDataLength(long j) {
        this.audioDataLength = Long.valueOf(j);
    }

    public void setAudioDataStartPosition(Long l) {
        this.audioDataStartPosition = l;
    }

    public void setBitRate(int i) {
        this.bitRate = Integer.valueOf(i);
    }

    public void setBitsPerSample(int i) {
        this.bitsPerSample = Integer.valueOf(i);
    }

    public void setByteRate(int i) {
        this.byteRate = Integer.valueOf(i);
    }

    public void setChannelNumber(int i) {
        this.noOfChannels = Integer.valueOf(i);
    }

    public void setEncodingType(String str) {
        this.encodingType = str;
    }

    public void setLossless(boolean z) {
        this.isLossless = Boolean.valueOf(z);
    }

    public void setNoOfSamples(Long l) {
        this.noOfSamples = l;
    }

    public void setPreciseLength(double d) {
        this.trackLength = Double.valueOf(d);
    }

    public void setSamplingRate(int i) {
        this.samplingRate = Integer.valueOf(i);
    }

    public void setVariableBitRate(boolean z) {
        this.isVbr = Boolean.valueOf(z);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Audio Header content:\n");
        if (this.audioDataLength != null) {
            sb.append("\taudioDataLength:" + this.audioDataLength + "\n");
        }
        if (this.audioDataStartPosition != null) {
            sb.append("\taudioDataStartPosition:" + this.audioDataStartPosition + "\n");
        }
        if (this.audioDataEndPosition != null) {
            sb.append("\taudioDataEndPosition:" + this.audioDataEndPosition + "\n");
        }
        if (this.byteRate != null) {
            sb.append("\tbyteRate:" + this.byteRate + "\n");
        }
        if (this.bitRate != null) {
            sb.append("\tbitRate:" + this.bitRate + "\n");
        }
        if (this.samplingRate != null) {
            sb.append("\tsamplingRate:" + this.samplingRate + "\n");
        }
        if (this.bitsPerSample != null) {
            sb.append("\tbitsPerSample:" + this.bitsPerSample + "\n");
        }
        if (this.noOfSamples != null) {
            sb.append("\ttotalNoSamples:" + this.noOfSamples + "\n");
        }
        if (this.noOfChannels != null) {
            sb.append("\tnumberOfChannels:" + this.noOfChannels + "\n");
        }
        if (this.encodingType != null) {
            sb.append("\tencodingType:" + this.encodingType + "\n");
        }
        if (this.isVbr != null) {
            sb.append("\tisVbr:" + this.isVbr + "\n");
        }
        if (this.isLossless != null) {
            sb.append("\tisLossless:" + this.isLossless + "\n");
        }
        if (this.trackLength != null) {
            sb.append("\ttrackDuration:" + this.trackLength + "\n");
        }
        return sb.toString();
    }
}
