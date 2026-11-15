package org.schabi.newpipe.extractor.playlist;

import defpackage.yz4;

public class c extends yz4 {
    public c(int i) {
        super(i);
    }

    @Override
    public PlaylistInfoItem a(b bVar) {
        PlaylistInfoItem playlistInfoItem = new PlaylistInfoItem(g(), bVar.getUrl(), bVar.getName());
        try {
            playlistInfoItem.setUploaderName(bVar.b());
        } catch (Exception e) {
            b(e);
        }
        try {
            playlistInfoItem.setUploaderUrl(bVar.a());
        } catch (Exception e2) {
            b(e2);
        }
        try {
            playlistInfoItem.setUploaderVerified(bVar.c());
        } catch (Exception e3) {
            b(e3);
        }
        try {
            playlistInfoItem.setThumbnails(bVar.j());
        } catch (Exception e4) {
            b(e4);
        }
        try {
            playlistInfoItem.setStreamCount(bVar.d());
        } catch (Exception e5) {
            b(e5);
        }
        try {
            playlistInfoItem.setDescription(bVar.getDescription());
        } catch (Exception e6) {
            b(e6);
        }
        try {
            playlistInfoItem.setPlaylistType(bVar.o());
        } catch (Exception e7) {
            b(e7);
        }
        return playlistInfoItem;
    }
}
