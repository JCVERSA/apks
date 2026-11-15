.class public final synthetic Lrk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/cloud/tupdate/bean/UpdateEntity;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/cloud/tupdate/bean/UpdateEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrk;->b:Ljava/lang/String;

    iput-object p2, p0, Lrk;->c:Lcom/cloud/tupdate/bean/UpdateEntity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lrk;->b:Ljava/lang/String;

    iget-object p0, p0, Lrk;->c:Lcom/cloud/tupdate/bean/UpdateEntity;

    invoke-static {v0, p0}, Lvk;->i(Ljava/lang/String;Lcom/cloud/tupdate/bean/UpdateEntity;)V

    return-void
.end method
