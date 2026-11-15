package com.transsion.vishaplayersdk.youtube;

import org.schabi.newpipe.extractor.stream.StreamInfo;

public interface IParseYoutubeStreamInfo {
    void onParseFailure(String str);

    void onParseSuccess(String str, StreamInfo streamInfo);
}
