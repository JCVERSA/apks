.class public Lcom/transsion/liblan/interfaces/ITranMedia$Parse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/interfaces/ITranMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parse"
.end annotation


# static fields
.field public static final DO_INTERACT:I = 0x8

.field public static final FETCH_LOCAL:I = 0x2

.field public static final FETCH_NETWORK:I = 0x4

.field public static final PARSE_LOCAL:I = 0x0

.field public static final PARSE_NETWORK:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
