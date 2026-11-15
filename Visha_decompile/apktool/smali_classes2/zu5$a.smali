.class public Lzu5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzu5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/io/File;

.field public final synthetic c:Lzu5;


# direct methods
.method public constructor <init>(Lzu5;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lzu5$a;->c:Lzu5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lzu5$a;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lzu5$a;->c:Lzu5;

    iget-object p0, p0, Lzu5$a;->b:Ljava/io/File;

    invoke-static {v0, p0}, Lzu5;->c(Lzu5;Ljava/io/File;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lzu5$a;->a()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
