.class public Lcom/transsion/liblan/interfaces/ITranMedia$State;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/interfaces/ITranMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final ENDED:I = 0x6

.field public static final ERROR:I = 0x7

.field public static final MAX:I = 0x8

.field public static final NOTHING_SPECIAL:I = 0x0

.field public static final OPENING:I = 0x1

.field public static final PAUSED:I = 0x4

.field public static final PLAYING:I = 0x3

.field public static final STOPPED:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
