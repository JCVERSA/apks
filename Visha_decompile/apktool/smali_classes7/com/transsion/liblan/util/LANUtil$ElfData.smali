.class Lcom/transsion/liblan/util/LANUtil$ElfData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/util/LANUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElfData"
.end annotation


# instance fields
.field att_arch:Ljava/lang/String;

.field att_fpu:Z

.field e_machine:I

.field e_shnum:I

.field e_shoff:I

.field is64bits:Z

.field order:Ljava/nio/ByteOrder;

.field sh_offset:I

.field sh_size:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lai5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/liblan/util/LANUtil$ElfData;-><init>()V

    return-void
.end method
