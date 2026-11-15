.class public Lcom/transsion/liblan/interfaces/ITranMedia$MediaType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/interfaces/ITranMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaType"
.end annotation


# static fields
.field public static final DIRECTORY:I = 0x2

.field public static final DISC:I = 0x3

.field public static final FILE:I = 0x1

.field public static final PLAYLIST:I = 0x5

.field public static final STREAM:I = 0x4

.field public static final UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
