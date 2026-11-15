.class public final Landroidx/datastore/preferences/protobuf/JavaFeaturesProto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures;,
        Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeaturesOrBuilder;
    }
.end annotation


# static fields
.field public static final JAVA_FIELD_NUMBER:I = 0x3e9

.field public static final java_:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;",
            "Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    invoke-static {}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    move-result-object v0

    invoke-static {}, Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures;

    move-result-object v1

    invoke-static {}, Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures;

    move-result-object v2

    sget-object v5, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->MESSAGE:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    const-class v6, Landroidx/datastore/preferences/protobuf/JavaFeaturesProto$JavaFeatures;

    const/4 v3, 0x0

    const/16 v4, 0x3e9

    invoke-static/range {v0 .. v6}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Landroidx/datastore/preferences/protobuf/MessageLite;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Internal$EnumLiteMap;ILandroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/JavaFeaturesProto;->java_:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerAllExtensions(Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/JavaFeaturesProto;->java_:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->add(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    return-void
.end method
