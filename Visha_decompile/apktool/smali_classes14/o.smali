.class public final synthetic Lo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/visha/ai/AIService;

.field public final synthetic c:Lcom/transsion/dbdata/database/PlayList;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:I

.field public final synthetic h:Lcom/transsion/visha/ai/AIService$c;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/visha/ai/AIService;Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo;->b:Lcom/transsion/visha/ai/AIService;

    iput-object p2, p0, Lo;->c:Lcom/transsion/dbdata/database/PlayList;

    iput-object p3, p0, Lo;->d:Ljava/lang/String;

    iput-object p4, p0, Lo;->e:Ljava/lang/String;

    iput-object p5, p0, Lo;->f:Ljava/lang/String;

    iput p6, p0, Lo;->g:I

    iput-object p7, p0, Lo;->h:Lcom/transsion/visha/ai/AIService$c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lo;->b:Lcom/transsion/visha/ai/AIService;

    iget-object v1, p0, Lo;->c:Lcom/transsion/dbdata/database/PlayList;

    iget-object v2, p0, Lo;->d:Ljava/lang/String;

    iget-object v3, p0, Lo;->e:Ljava/lang/String;

    iget-object v4, p0, Lo;->f:Ljava/lang/String;

    iget v5, p0, Lo;->g:I

    iget-object v6, p0, Lo;->h:Lcom/transsion/visha/ai/AIService$c;

    invoke-static/range {v0 .. v6}, Lcom/transsion/visha/ai/AIService;->a(Lcom/transsion/visha/ai/AIService;Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V

    return-void
.end method
