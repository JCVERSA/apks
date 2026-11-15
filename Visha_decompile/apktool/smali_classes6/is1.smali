.class public final synthetic Lis1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lnu4;

.field public final synthetic c:Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lnu4;Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lis1;->b:Lnu4;

    iput-object p2, p0, Lis1;->c:Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;

    iput-object p3, p0, Lis1;->d:Ljava/lang/Object;

    iput-object p4, p0, Lis1;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lis1;->b:Lnu4;

    iget-object v1, p0, Lis1;->c:Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;

    iget-object v2, p0, Lis1;->d:Ljava/lang/Object;

    iget-object p0, p0, Lis1;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/dbdata/engine/DataEngine$a;->b(Lnu4;Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
