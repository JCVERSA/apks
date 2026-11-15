.class public Lxgd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxgd;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()Luid;
    .locals 2

    invoke-static {}, Lzld;->d()Lzld;

    move-result-object v0

    invoke-virtual {v0}, Lzld;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object p0, p0, Lxgd;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lned;->a(Ljava/lang/String;Ljava/lang/String;I)Luid;

    move-result-object p0

    return-object p0
.end method
