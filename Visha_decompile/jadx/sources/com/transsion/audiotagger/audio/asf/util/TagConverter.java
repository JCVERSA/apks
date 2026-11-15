package com.transsion.audiotagger.audio.asf.util;

import com.transsion.audiotagger.audio.asf.data.AsfHeader;
import com.transsion.audiotagger.audio.asf.data.ContainerType;
import com.transsion.audiotagger.audio.asf.data.MetadataContainer;
import com.transsion.audiotagger.audio.asf.data.MetadataContainerFactory;
import com.transsion.audiotagger.audio.asf.data.MetadataDescriptor;
import com.transsion.audiotagger.tag.FieldKey;
import com.transsion.audiotagger.tag.Tag;
import com.transsion.audiotagger.tag.TagField;
import com.transsion.audiotagger.tag.asf.AsfFieldKey;
import com.transsion.audiotagger.tag.asf.AsfTag;
import com.transsion.audiotagger.tag.asf.AsfTagBannerField;
import com.transsion.audiotagger.tag.asf.AsfTagCoverField;
import com.transsion.audiotagger.tag.asf.AsfTagField;
import com.transsion.audiotagger.tag.asf.AsfTagTextField;
import com.transsion.audiotagger.tag.reference.GenreTypes;
import java.util.Iterator;

public final class TagConverter {
    static final boolean $assertionsDisabled = false;

    private TagConverter() {
    }

    public static void assignCommonTagValues(Tag tag, MetadataContainer metadataContainer) {
        FieldKey fieldKey = FieldKey.ALBUM;
        if (Utils.isBlank(tag.getFirst(fieldKey))) {
            metadataContainer.removeDescriptorsByName(AsfFieldKey.ALBUM.getFieldName());
        } else {
            MetadataDescriptor metadataDescriptor = new MetadataDescriptor(metadataContainer.getContainerType(), AsfFieldKey.ALBUM.getFieldName(), 0);
            metadataDescriptor.setStringValue(tag.getFirst(fieldKey));
            metadataContainer.removeDescriptorsByName(metadataDescriptor.getName());
            metadataContainer.addDescriptor(metadataDescriptor);
        }
        FieldKey fieldKey2 = FieldKey.TRACK;
        if (Utils.isBlank(tag.getFirst(fieldKey2))) {
            metadataContainer.removeDescriptorsByName(AsfFieldKey.TRACK.getFieldName());
        } else {
            MetadataDescriptor metadataDescriptor2 = new MetadataDescriptor(metadataContainer.getContainerType(), AsfFieldKey.TRACK.getFieldName(), 0);
            metadataDescriptor2.setStringValue(tag.getFirst(fieldKey2));
            metadataContainer.removeDescriptorsByName(metadataDescriptor2.getName());
            metadataContainer.addDescriptor(metadataDescriptor2);
        }
        FieldKey fieldKey3 = FieldKey.YEAR;
        if (Utils.isBlank(tag.getFirst(fieldKey3))) {
            metadataContainer.removeDescriptorsByName(AsfFieldKey.YEAR.getFieldName());
        } else {
            MetadataDescriptor metadataDescriptor3 = new MetadataDescriptor(metadataContainer.getContainerType(), AsfFieldKey.YEAR.getFieldName(), 0);
            metadataDescriptor3.setStringValue(tag.getFirst(fieldKey3));
            metadataContainer.removeDescriptorsByName(metadataDescriptor3.getName());
            metadataContainer.addDescriptor(metadataDescriptor3);
        }
        FieldKey fieldKey4 = FieldKey.GENRE;
        if (Utils.isBlank(tag.getFirst(fieldKey4))) {
            metadataContainer.removeDescriptorsByName(AsfFieldKey.GENRE.getFieldName());
            metadataContainer.removeDescriptorsByName(AsfFieldKey.GENRE_ID.getFieldName());
            return;
        }
        MetadataDescriptor metadataDescriptor4 = new MetadataDescriptor(metadataContainer.getContainerType(), AsfFieldKey.GENRE.getFieldName(), 0);
        metadataDescriptor4.setStringValue(tag.getFirst(fieldKey4));
        metadataContainer.removeDescriptorsByName(metadataDescriptor4.getName());
        metadataContainer.addDescriptor(metadataDescriptor4);
        Integer idForName = GenreTypes.getInstanceOf().getIdForName(tag.getFirst(fieldKey4));
        if (idForName == null) {
            metadataContainer.removeDescriptorsByName(AsfFieldKey.GENRE_ID.getFieldName());
            return;
        }
        MetadataDescriptor metadataDescriptor5 = new MetadataDescriptor(metadataContainer.getContainerType(), AsfFieldKey.GENRE_ID.getFieldName(), 0);
        metadataDescriptor5.setStringValue("(" + idForName + ")");
        metadataContainer.removeDescriptorsByName(metadataDescriptor5.getName());
        metadataContainer.addDescriptor(metadataDescriptor5);
    }

    public static AsfTag createTagOf(AsfHeader asfHeader) {
        TagField asfTagTextField;
        AsfTag asfTag = new AsfTag(true);
        for (int i = 0; i < ContainerType.values().length; i++) {
            MetadataContainer metadataContainerFindMetadataContainer = asfHeader.findMetadataContainer(ContainerType.values()[i]);
            if (metadataContainerFindMetadataContainer != null) {
                for (MetadataDescriptor metadataDescriptor : metadataContainerFindMetadataContainer.getDescriptors()) {
                    if (metadataDescriptor.getType() != 1) {
                        asfTagTextField = new AsfTagTextField(metadataDescriptor);
                    } else if (metadataDescriptor.getName().equals(AsfFieldKey.COVER_ART.getFieldName())) {
                        asfTagTextField = new AsfTagCoverField(metadataDescriptor);
                    } else {
                        asfTagTextField = metadataDescriptor.getName().equals(AsfFieldKey.BANNER_IMAGE.getFieldName()) ? new AsfTagBannerField(metadataDescriptor) : new AsfTagField(metadataDescriptor);
                    }
                    asfTag.addField(asfTagTextField);
                }
            }
        }
        return asfTag;
    }

    public static MetadataContainer[] distributeMetadata(AsfTag asfTag) {
        Iterator<AsfTagField> asfFields = asfTag.getAsfFields();
        MetadataContainer[] metadataContainerArrCreateContainers = MetadataContainerFactory.getInstance().createContainers(ContainerType.getOrdered());
        while (asfFields.hasNext()) {
            AsfTagField next = asfFields.next();
            boolean z = false;
            for (int i = 0; !z && i < metadataContainerArrCreateContainers.length; i++) {
                if (ContainerType.areInCorrectOrder(metadataContainerArrCreateContainers[i].getContainerType(), AsfFieldKey.getAsfFieldKey(next.getId()).getHighestContainer()) && metadataContainerArrCreateContainers[i].isAddSupported(next.getDescriptor())) {
                    metadataContainerArrCreateContainers[i].addDescriptor(next.getDescriptor());
                    z = true;
                }
            }
        }
        return metadataContainerArrCreateContainers;
    }
}
