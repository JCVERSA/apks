package com.transsion.audiotagger.tag.reference;

import com.transsion.audiotagger.tag.datatype.AbstractIntStringValuePair;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTXXX;
import java.util.LinkedHashMap;
import java.util.Map;
import org.mozilla.classfile.ByteCode;

public class GenreTypes extends AbstractIntStringValuePair {
    private static final int MAX_GENRE_ID = 191;
    private static final int MAX_STANDARD_GENRE_ID = 125;
    private static GenreTypes genreTypes;
    private Map<String, Integer> nameToIdMap;

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    private GenreTypes() {
        this.idToValue.put((I) 0, "Blues");
        this.idToValue.put((I) 1, "Classic Rock");
        this.idToValue.put((I) 2, FrameBodyTXXX.COUNTRY);
        this.idToValue.put((I) 3, "Dance");
        this.idToValue.put((I) 4, "Disco");
        this.idToValue.put((I) 5, "Funk");
        this.idToValue.put((I) 6, "Grunge");
        this.idToValue.put((I) 7, "Hip-Hop");
        this.idToValue.put((I) 8, "Jazz");
        this.idToValue.put((I) 9, "Metal");
        this.idToValue.put((I) 10, "New Age");
        this.idToValue.put((I) 11, "Oldies");
        this.idToValue.put((I) 12, "Other");
        this.idToValue.put((I) 13, "Pop");
        this.idToValue.put((I) 14, "R&B");
        this.idToValue.put((I) 15, "Rap");
        this.idToValue.put((I) 16, "Reggae");
        this.idToValue.put((I) 17, "Rock");
        this.idToValue.put((I) 18, "Techno");
        this.idToValue.put((I) 19, "Industrial");
        this.idToValue.put((I) 20, "Alternative");
        this.idToValue.put((I) 21, "Ska");
        this.idToValue.put((I) 22, "Death Metal");
        this.idToValue.put((I) 23, "Pranks");
        this.idToValue.put((I) 24, "Soundtrack");
        this.idToValue.put((I) 25, "Euro-Techno");
        this.idToValue.put((I) 26, "Ambient");
        this.idToValue.put((I) 27, "Trip-Hop");
        this.idToValue.put((I) 28, "Vocal");
        this.idToValue.put((I) 29, "Jazz+Funk");
        this.idToValue.put((I) 30, "Fusion");
        this.idToValue.put((I) 31, "Trance");
        this.idToValue.put((I) 32, "Classical");
        this.idToValue.put((I) 33, "Instrumental");
        this.idToValue.put((I) 34, "Acid");
        this.idToValue.put((I) 35, "House");
        this.idToValue.put((I) 36, "Game");
        this.idToValue.put((I) 37, "Sound Clip");
        this.idToValue.put((I) 38, "Gospel");
        this.idToValue.put((I) 39, "Noise");
        this.idToValue.put((I) 40, "AlternRock");
        this.idToValue.put((I) 41, "Bass");
        this.idToValue.put((I) 42, "Soul");
        this.idToValue.put((I) 43, "Punk");
        this.idToValue.put((I) 44, "Space");
        this.idToValue.put((I) 45, "Meditative");
        this.idToValue.put((I) 46, "Instrumental Pop");
        this.idToValue.put((I) 47, "Instrumental Rock");
        this.idToValue.put((I) 48, "Ethnic");
        this.idToValue.put((I) 49, "Gothic");
        this.idToValue.put((I) 50, "Darkwave");
        this.idToValue.put((I) 51, "Techno-Industrial");
        this.idToValue.put((I) 52, "Electronic");
        this.idToValue.put((I) 53, "Pop-Folk");
        this.idToValue.put((I) 54, "Eurodance");
        this.idToValue.put((I) 55, "Dream");
        this.idToValue.put((I) 56, "Southern Rock");
        this.idToValue.put((I) 57, "Comedy");
        this.idToValue.put((I) 58, "Cult");
        this.idToValue.put((I) 59, "Gangsta");
        this.idToValue.put((I) 60, "Top 40");
        this.idToValue.put((I) 61, "Christian Rap");
        this.idToValue.put((I) 62, "Pop/Funk");
        this.idToValue.put((I) 63, "Jungle");
        this.idToValue.put((I) 64, "Native American");
        this.idToValue.put((I) 65, "Cabaret");
        this.idToValue.put((I) 66, "New Wave");
        this.idToValue.put((I) 67, "Psychadelic");
        this.idToValue.put((I) 68, "Rave");
        this.idToValue.put((I) 69, "Showtunes");
        this.idToValue.put((I) 70, "Trailer");
        this.idToValue.put((I) 71, "Lo-Fi");
        this.idToValue.put((I) 72, "Tribal");
        this.idToValue.put((I) 73, "Acid Punk");
        this.idToValue.put((I) 74, "Acid Jazz");
        this.idToValue.put((I) 75, "Polka");
        this.idToValue.put((I) 76, "Retro");
        this.idToValue.put((I) 77, "Musical");
        this.idToValue.put((I) 78, "Rock & Roll");
        this.idToValue.put((I) 79, "Hard Rock");
        this.idToValue.put((I) 80, "Folk");
        this.idToValue.put((I) 81, "Folk-Rock");
        this.idToValue.put((I) 82, "National Folk");
        this.idToValue.put((I) 83, "Swing");
        this.idToValue.put((I) 84, "Fast Fusion");
        this.idToValue.put((I) 85, "Bebob");
        this.idToValue.put((I) 86, "Latin");
        this.idToValue.put((I) 87, "Revival");
        this.idToValue.put((I) 88, "Celtic");
        this.idToValue.put((I) 89, "Bluegrass");
        this.idToValue.put((I) 90, "Avantgarde");
        this.idToValue.put((I) 91, "Gothic Rock");
        this.idToValue.put((I) 92, "Progressive Rock");
        this.idToValue.put((I) 93, "Psychedelic Rock");
        this.idToValue.put((I) 94, "Symphonic Rock");
        this.idToValue.put((I) 95, "Slow Rock");
        this.idToValue.put((I) 96, "Big Band");
        this.idToValue.put((I) 97, "Chorus");
        this.idToValue.put((I) 98, "Easy Listening");
        this.idToValue.put((I) 99, "Acoustic");
        this.idToValue.put((I) 100, "Humour");
        this.idToValue.put((I) 101, "Speech");
        this.idToValue.put((I) 102, "Chanson");
        this.idToValue.put((I) 103, "Opera");
        this.idToValue.put((I) 104, "Chamber Music");
        this.idToValue.put((I) 105, "Sonata");
        this.idToValue.put((I) 106, "Symphony");
        this.idToValue.put((I) 107, "Booty Bass");
        this.idToValue.put((I) 108, "Primus");
        this.idToValue.put((I) 109, "Porn Groove");
        this.idToValue.put((I) 110, "Satire");
        this.idToValue.put((I) 111, "Slow Jam");
        this.idToValue.put((I) 112, "Club");
        this.idToValue.put((I) 113, "Tango");
        this.idToValue.put((I) 114, "Samba");
        this.idToValue.put((I) 115, "Folklore");
        this.idToValue.put((I) 116, "Ballad");
        this.idToValue.put((I) 117, "Power Ballad");
        this.idToValue.put((I) 118, "Rhythmic Soul");
        this.idToValue.put((I) 119, "Freestyle");
        this.idToValue.put((I) 120, "Duet");
        this.idToValue.put((I) 121, "Punk Rock");
        this.idToValue.put((I) 122, "Drum Solo");
        this.idToValue.put((I) 123, "Acapella");
        this.idToValue.put((I) 124, "Euro-House");
        this.idToValue.put((I) 125, "Dance Hall");
        this.idToValue.put((I) 126, "Goa");
        this.idToValue.put((I) 127, "Drum & Bass");
        this.idToValue.put((I) 128, "Club-House");
        this.idToValue.put((I) 129, "Hardcore");
        this.idToValue.put((I) 130, "Terror");
        this.idToValue.put((I) 131, "Indie");
        this.idToValue.put((I) 132, "BritPop");
        this.idToValue.put((I) 133, "Negerpunk");
        this.idToValue.put((I) 134, "Polsk Punk");
        this.idToValue.put((I) 135, "Beat");
        this.idToValue.put((I) 136, "Christian Gangsta Rap");
        this.idToValue.put((I) 137, "Heavy Metal");
        this.idToValue.put((I) 138, "Black Metal");
        this.idToValue.put((I) 139, "Crossover");
        this.idToValue.put((I) 140, "Contemporary Christian");
        this.idToValue.put((I) 141, "Christian Rock");
        this.idToValue.put((I) 142, "Merengue");
        this.idToValue.put((I) 143, "Salsa");
        this.idToValue.put((I) 144, "Thrash Metal");
        this.idToValue.put((I) 145, "Anime");
        this.idToValue.put((I) 146, "JPop");
        this.idToValue.put((I) 147, "SynthPop");
        this.idToValue.put((I) 148, "Abstract");
        this.idToValue.put((I) 149, "Art Rock");
        this.idToValue.put((I) 150, "Baroque");
        this.idToValue.put((I) 151, "Bhangra");
        this.idToValue.put((I) 152, "Big Beat");
        this.idToValue.put((I) 153, "Breakbeat");
        this.idToValue.put((I) 154, "Chillout");
        this.idToValue.put((I) 155, "Downtempo");
        this.idToValue.put((I) 156, "Dub");
        this.idToValue.put((I) 157, "EBM");
        this.idToValue.put((I) 158, "Eclectic");
        this.idToValue.put((I) 159, "Electro");
        this.idToValue.put((I) 160, "Electroclash");
        this.idToValue.put((I) 161, "Emo");
        this.idToValue.put((I) 162, "Experimental");
        this.idToValue.put((I) 163, "Garage");
        this.idToValue.put((I) 164, "Global");
        this.idToValue.put((I) 165, "IDM");
        this.idToValue.put((I) 166, "Illbient");
        this.idToValue.put((I) 167, "Industro-Goth");
        this.idToValue.put((I) Integer.valueOf(ByteCode.JSR), "Jam Band");
        this.idToValue.put((I) 169, "Krautrock");
        this.idToValue.put((I) 170, "Leftfield");
        this.idToValue.put((I) Integer.valueOf(ByteCode.LOOKUPSWITCH), "Lounge");
        this.idToValue.put((I) 172, "Math Rock");
        this.idToValue.put((I) Integer.valueOf(ByteCode.LRETURN), "New Romantic");
        this.idToValue.put((I) Integer.valueOf(ByteCode.FRETURN), "Nu-Breakz");
        this.idToValue.put((I) Integer.valueOf(ByteCode.DRETURN), "Post-Punk");
        this.idToValue.put((I) 176, "Post-Rock");
        this.idToValue.put((I) 177, "Psytrance");
        this.idToValue.put((I) 178, "Shoegaze");
        this.idToValue.put((I) Integer.valueOf(ByteCode.PUTSTATIC), "Space Rock");
        this.idToValue.put((I) 180, "Trop Rock");
        this.idToValue.put((I) 181, "World Music");
        this.idToValue.put((I) 182, "Neoclassical");
        this.idToValue.put((I) 183, "Audiobook");
        this.idToValue.put((I) 184, "Audio Theatre");
        this.idToValue.put((I) 185, "Neue Deutsche Welle");
        this.idToValue.put((I) Integer.valueOf(ByteCode.INVOKEDYNAMIC), "Podcast");
        this.idToValue.put((I) 187, "Indie Rock");
        this.idToValue.put((I) 188, "G-Funk");
        this.idToValue.put((I) 189, "Dubstep");
        this.idToValue.put((I) Integer.valueOf(ByteCode.ARRAYLENGTH), "Garage Rock");
        this.idToValue.put((I) 191, "Psybient");
        createMaps();
        this.nameToIdMap = new LinkedHashMap(this.idToValue.size());
        for (Map.Entry entry : this.idToValue.entrySet()) {
            this.nameToIdMap.put(((String) entry.getValue()).toLowerCase(), (Integer) entry.getKey());
        }
    }

    public static GenreTypes getInstanceOf() {
        if (genreTypes == null) {
            genreTypes = new GenreTypes();
        }
        return genreTypes;
    }

    public static int getMaxGenreId() {
        return 191;
    }

    public static int getMaxStandardGenreId() {
        return 125;
    }

    public Integer getIdForName(String str) {
        return this.nameToIdMap.get(str.toLowerCase());
    }
}
