.class public final synthetic Lktb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/VideoMainFragment$c;

.field public final synthetic c:Z

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment$c;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lktb;->b:Lcom/transsion/magicvideo/fragments/VideoMainFragment$c;

    iput-boolean p2, p0, Lktb;->c:Z

    iput p3, p0, Lktb;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lktb;->b:Lcom/transsion/magicvideo/fragments/VideoMainFragment$c;

    iget-boolean v1, p0, Lktb;->c:Z

    iget p0, p0, Lktb;->d:I

    invoke-static {v0, v1, p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment$c;->e(Lcom/transsion/magicvideo/fragments/VideoMainFragment$c;ZI)V

    return-void
.end method
