package com.wandoujia.download.model;

import java.io.Serializable;
import java.util.List;

public class DlinkInfo implements Serializable {
    private static final long serialVersionUID = -8201185942749101668L;
    public List<DownloadUrlInfo> songLinkEntries;
    public String uri;
}
