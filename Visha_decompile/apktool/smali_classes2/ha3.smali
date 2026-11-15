.class public final synthetic Lha3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/EncoderSelector;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final selectEncoderInfos(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    invoke-static {p1}, Landroidx/media3/transformer/EncoderSelector;->b(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method
