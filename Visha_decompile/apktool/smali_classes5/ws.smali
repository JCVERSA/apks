.class public final synthetic Lws;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/AudioMainFragment$b;

.field public final synthetic c:Z

.field public final synthetic d:I

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/AudioMainFragment$b;ZIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lws;->b:Lcom/transsion/audio/fragments/AudioMainFragment$b;

    iput-boolean p2, p0, Lws;->c:Z

    iput p3, p0, Lws;->d:I

    iput-boolean p4, p0, Lws;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lws;->b:Lcom/transsion/audio/fragments/AudioMainFragment$b;

    iget-boolean v1, p0, Lws;->c:Z

    iget v2, p0, Lws;->d:I

    iget-boolean p0, p0, Lws;->e:Z

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/audio/fragments/AudioMainFragment$b;->e(Lcom/transsion/audio/fragments/AudioMainFragment$b;ZIZ)V

    return-void
.end method
