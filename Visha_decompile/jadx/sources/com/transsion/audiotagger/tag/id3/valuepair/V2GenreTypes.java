package com.transsion.audiotagger.tag.id3.valuepair;

import com.transsion.audiotagger.tag.reference.GenreTypes;
import java.util.Collections;
import java.util.List;

public class V2GenreTypes {
    private static V2GenreTypes v2GenresTypes;

    private V2GenreTypes() {
    }

    public static V2GenreTypes getInstanceOf() {
        if (v2GenresTypes == null) {
            v2GenresTypes = new V2GenreTypes();
        }
        return v2GenresTypes;
    }

    public List<String> getAlphabeticalValueList() {
        List<String> alphabeticalValueList = GenreTypes.getInstanceOf().getAlphabeticalValueList();
        alphabeticalValueList.add(ID3V2ExtendedGenreTypes.CR.getDescription());
        alphabeticalValueList.add(ID3V2ExtendedGenreTypes.RX.getDescription());
        Collections.sort(alphabeticalValueList);
        return alphabeticalValueList;
    }
}
