package com.transsion.dbdata.beans.media;

import com.google.gson.annotations.SerializedName;
import java.util.List;

public class MusicBrainzResponseBean {

    @SerializedName("artist-credit")
    private List<ArtistCredit> artistCredit;
    private String disambiguation;

    @SerializedName("first-release-date")
    private String firstReleaseDate;
    private String id;
    private int length;
    private List<Release> releases;
    private String title;
    private boolean video;

    public static class Area {
        private String disambiguation;
        private String id;
        private List<String> iso31661Codes;
        private String name;
        private String sortName;
        private String type;
        private String typeId;
    }

    public static class Artist {
        private String disambiguation;
        private String id;
        private String name;
        private String sortName;
        private String type;
        private String typeId;
    }

    public static class ArtistCredit {
        private Artist artist;
        private String joinphrase;
        private String name;

        public String getName() {
            return this.name;
        }
    }

    public static class Release {
        private String barcode;
        private String country;
        private String date;
        private String disambiguation;
        private String id;
        private String packaging;
        private String packagingId;
        private String quality;

        @SerializedName("release-events")
        private List<ReleaseEvent> releaseEvents;
        private String status;
        private String statusId;
        private TextRepresentation textRepresentation;
        private String title;

        public String getDate() {
            return this.date;
        }

        public String getId() {
            return this.id;
        }

        public String getStatus() {
            return this.status;
        }

        public String getTitle() {
            return this.title;
        }
    }

    public static class ReleaseEvent {
        private Area area;
        private String date;
    }

    public static class TextRepresentation {
        private String language;
        private String script;
    }

    public String getAlbumName() {
        List<Release> list = this.releases;
        if (list == null || list.isEmpty()) {
            return null;
        }
        for (Release release : this.releases) {
            if (release.getDate() != null && release.getDate().equals(this.firstReleaseDate) && "Official".equals(release.getStatus())) {
                return release.getTitle();
            }
        }
        return null;
    }

    public String getAlbumYear() {
        String str = this.firstReleaseDate;
        if (str == null || str.length() < 4) {
            return null;
        }
        return this.firstReleaseDate.substring(0, 4);
    }

    public String getArtistName() {
        List<ArtistCredit> list = this.artistCredit;
        if (list == null || list.isEmpty()) {
            return null;
        }
        return this.artistCredit.get(0).getName();
    }

    public String getMusicName() {
        return this.title;
    }

    public String getReleaseMbid() {
        List<Release> list = this.releases;
        if (list == null || list.isEmpty()) {
            return null;
        }
        for (Release release : this.releases) {
            if (release.getDate() != null && release.getDate().equals(this.firstReleaseDate) && "Official".equals(release.getStatus())) {
                return release.getId();
            }
        }
        return null;
    }
}
