package com.transsion.audiotagger.audio.aiff;

import com.transsion.audiotagger.audio.generic.GenericAudioHeader;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class AiffAudioHeader extends GenericAudioHeader {
    private String audioEncoding;
    private String author;
    private String copyright;
    private AiffType fileType;
    private String name;
    private Date timestamp;
    private List<String> applicationIdentifiers = new ArrayList();
    private List<String> comments = new ArrayList();
    private List<String> annotations = new ArrayList();
    private Endian endian = Endian.BIG_ENDIAN;

    public enum Endian {
        BIG_ENDIAN,
        LITTLE_ENDIAN
    }

    public void addAnnotation(String str) {
        this.annotations.add(str);
    }

    public void addApplicationIdentifier(String str) {
        this.applicationIdentifiers.add(str);
    }

    public void addComment(String str) {
        this.comments.add(str);
    }

    public List<String> getAnnotations() {
        return this.annotations;
    }

    public List<String> getApplicationIdentifiers() {
        return this.applicationIdentifiers;
    }

    public String getAuthor() {
        return this.author;
    }

    public List<String> getComments() {
        return this.comments;
    }

    public String getCopyright() {
        return this.copyright;
    }

    public Endian getEndian() {
        return this.endian;
    }

    public AiffType getFileType() {
        return this.fileType;
    }

    public String getName() {
        return this.name;
    }

    public Date getTimestamp() {
        return this.timestamp;
    }

    public void setAuthor(String str) {
        this.author = str;
    }

    public void setCopyright(String str) {
        this.copyright = str;
    }

    public void setEndian(Endian endian) {
        this.endian = endian;
    }

    public void setFileType(AiffType aiffType) {
        this.fileType = aiffType;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setTimestamp(Date date) {
        this.timestamp = date;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder("\n");
        String str = this.name;
        if (str != null && !str.isEmpty()) {
            sb.append("\tName:" + this.name + "\n");
        }
        String str2 = this.author;
        if (str2 != null && !str2.isEmpty()) {
            sb.append("\tAuthor:" + this.author + "\n");
        }
        String str3 = this.copyright;
        if (str3 != null && !str3.isEmpty()) {
            sb.append("\tCopyright:" + this.copyright + "\n");
        }
        if (this.comments.size() > 0) {
            sb.append("Comments:\n");
            Iterator<String> it = this.comments.iterator();
            while (it.hasNext()) {
                sb.append("\t" + it.next() + "\n");
            }
        }
        if (this.applicationIdentifiers.size() > 0) {
            sb.append("ApplicationIds:\n");
            Iterator<String> it2 = this.applicationIdentifiers.iterator();
            while (it2.hasNext()) {
                sb.append("\t" + it2.next() + "\n");
            }
        }
        if (this.annotations.size() > 0) {
            sb.append("Annotations:\n");
            Iterator<String> it3 = this.annotations.iterator();
            while (it3.hasNext()) {
                sb.append("\t" + it3.next() + "\n");
            }
        }
        return super.toString() + sb.toString();
    }
}
