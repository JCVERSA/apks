.class public final synthetic Lds3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Le74;


# direct methods
.method public synthetic constructor <init>(Le74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lds3;->b:Le74;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lds3;->b:Le74;

    invoke-static {p0, p1}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->I1(Le74;Ljava/lang/Object;)Lld7;

    move-result-object p0

    return-object p0
.end method
