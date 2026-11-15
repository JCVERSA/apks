.class public final enum Lcom/alibaba/fastjson/serializer/SerializerFeature;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/fastjson/serializer/SerializerFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum DisableCheckSpecialChar:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final EMPTY:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum IgnoreErrorGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum IgnoreNonFieldGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum MapSortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final WRITE_MAP_NULL_FEATURES:I

.field public static final enum WriteBigDecimalAsPlain:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteTabAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public final mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 38

    new-instance v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object v0, v1

    const-string v2, "QuoteFieldNames"

    const/4 v15, 0x0

    invoke-direct {v1, v2, v15}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-instance v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object v1, v2

    const-string v3, "UseSingleQuotes"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-instance v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object v2, v14

    const-string v3, "WriteMapNullValue"

    const/4 v4, 0x2

    invoke-direct {v14, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-instance v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object v3, v4

    const-string v5, "WriteEnumUsingToString"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-instance v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object v4, v5

    const-string v6, "WriteEnumUsingName"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-instance v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object v5, v6

    const-string v7, "UseISO8601DateFormat"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-instance v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object v6, v13

    const-string v7, "WriteNullListAsEmpty"

    const/4 v8, 0x6

    invoke-direct {v13, v7, v8}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-instance v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object v7, v12

    const-string v8, "WriteNullStringAsEmpty"

    const/4 v9, 0x7

    invoke-direct {v12, v8, v9}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-instance v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object v8, v11

    const-string v9, "WriteNullNumberAsZero"

    const/16 v10, 0x8

    invoke-direct {v11, v9, v10}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-instance v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object v9, v10

    const-string v15, "WriteNullBooleanAsFalse"

    move-object/from16 v17, v11

    const/16 v11, 0x9

    invoke-direct {v10, v15, v11}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-instance v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v30, v10

    move-object v10, v11

    const-string v15, "SkipTransientField"

    move-object/from16 v18, v12

    const/16 v12, 0xa

    invoke-direct {v11, v15, v12}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-instance v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v31, v17

    move-object v11, v12

    const-string v15, "SortField"

    move-object/from16 v17, v13

    const/16 v13, 0xb

    invoke-direct {v12, v15, v13}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-instance v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v32, v18

    move-object v12, v13

    const-string v15, "WriteTabAsSpecial"

    move-object/from16 v18, v14

    const/16 v14, 0xc

    invoke-direct {v13, v15, v14}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteTabAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-instance v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v33, v17

    move-object v13, v14

    const-string v15, "PrettyFormat"

    move-object/from16 v34, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v35, v18

    move-object v14, v0

    const-string v15, "WriteClassName"

    move-object/from16 v36, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v1, 0x0

    move-object v15, v0

    const-string v1, "DisableCircularReferenceDetect"

    move-object/from16 v37, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v16, v0

    const-string v1, "WriteSlashAsSpecial"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v17, v0

    const-string v1, "BrowserCompatible"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v18, v0

    const-string v1, "WriteDateUseDateFormat"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v19, v0

    const-string v1, "NotWriteRootClassName"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v20, v0

    const-string v1, "DisableCheckSpecialChar"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCheckSpecialChar:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v21, v0

    const-string v1, "BeanToArray"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v22, v0

    const-string v1, "WriteNonStringKeyAsString"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v23, v0

    const-string v1, "NotWriteDefaultValue"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v24, v0

    const-string v1, "BrowserSecure"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v25, v0

    const-string v1, "IgnoreNonFieldGetter"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v26, v0

    const-string v1, "WriteNonStringValueAsString"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v27, v0

    const-string v1, "IgnoreErrorGetter"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreErrorGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v28, v0

    const-string v1, "WriteBigDecimalAsPlain"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteBigDecimalAsPlain:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v29, v0

    const-string v1, "MapSortField"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->MapSortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    filled-new-array/range {v0 .. v29}, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->$VALUES:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->EMPTY:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual/range {v35 .. v35}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v0

    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual/range {v33 .. v33}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual/range {v31 .. v31}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual/range {v32 .. v32}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WRITE_MAP_NULL_FEATURES:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    shl-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    return-void
.end method

.method public static config(ILcom/alibaba/fastjson/serializer/SerializerFeature;Z)I
    .locals 0

    if-eqz p2, :cond_0

    iget p1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr p0, p1

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    not-int p1, p1

    and-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method public static isEnabled(IILcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .locals 0

    .line 2
    iget p2, p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, p2

    if-nez p0, :cond_1

    and-int p0, p1, p2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .locals 0

    .line 1
    iget p1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p0, v0

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .locals 1

    const-class v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .locals 1

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->$VALUES:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0}, [Lcom/alibaba/fastjson/serializer/SerializerFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    return-object v0
.end method


# virtual methods
.method public final getMask()I
    .locals 0

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    return p0
.end method
