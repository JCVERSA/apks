.class Lcom/transsion/http/impl/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/http/impl/h;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/transsion/http/impl/h;


# direct methods
.method public constructor <init>(Lcom/transsion/http/impl/h;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/http/impl/g;->b:Lcom/transsion/http/impl/h;

    iput-object p2, p0, Lcom/transsion/http/impl/g;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/http/impl/g;->b:Lcom/transsion/http/impl/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method
