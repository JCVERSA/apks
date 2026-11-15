.class public final synthetic Lgw3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpj8;


# instance fields
.field public final synthetic a:Lzv3;


# direct methods
.method public synthetic constructor <init>(Lzv3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgw3;->a:Lzv3;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lgw3;->a:Lzv3;

    invoke-static {p0}, Lcom/google/firebase/installations/a;->e(Lzv3;)Lsx4;

    move-result-object p0

    return-object p0
.end method
