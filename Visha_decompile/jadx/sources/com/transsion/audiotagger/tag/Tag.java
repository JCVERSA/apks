package com.transsion.audiotagger.tag;

import com.transsion.audiotagger.tag.images.Artwork;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.List;

public interface Tag {
    void addField(FieldKey fieldKey, String... strArr) throws FieldDataInvalidException, KeyNotFoundException;

    void addField(TagField tagField) throws FieldDataInvalidException;

    void addField(Artwork artwork) throws FieldDataInvalidException;

    TagField createCompilationField(boolean z) throws FieldDataInvalidException, KeyNotFoundException;

    TagField createField(FieldKey fieldKey, String... strArr) throws FieldDataInvalidException, KeyNotFoundException;

    TagField createField(Artwork artwork) throws FieldDataInvalidException;

    void deleteArtworkField() throws KeyNotFoundException;

    void deleteField(FieldKey fieldKey) throws KeyNotFoundException;

    void deleteField(String str) throws KeyNotFoundException;

    List<String> getAll(FieldKey fieldKey) throws KeyNotFoundException;

    List<Artwork> getArtworkList();

    int getFieldCount();

    int getFieldCountIncludingSubValues();

    Iterator<TagField> getFields();

    List<TagField> getFields(FieldKey fieldKey) throws KeyNotFoundException;

    List<TagField> getFields(String str);

    String getFirst(FieldKey fieldKey) throws KeyNotFoundException;

    String getFirst(String str);

    Artwork getFirstArtwork();

    TagField getFirstField(FieldKey fieldKey);

    TagField getFirstField(String str);

    String getValue(FieldKey fieldKey, int i);

    boolean hasCommonFields();

    boolean hasField(FieldKey fieldKey);

    boolean hasField(String str);

    boolean isEmpty();

    boolean setEncoding(Charset charset) throws FieldDataInvalidException;

    void setField(FieldKey fieldKey, String... strArr) throws FieldDataInvalidException, KeyNotFoundException;

    void setField(TagField tagField) throws FieldDataInvalidException;

    void setField(Artwork artwork) throws FieldDataInvalidException;

    String toString();
}
