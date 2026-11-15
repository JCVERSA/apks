.class public final synthetic Ltgb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/cloud/tupdate/bean/UpdateEntity;

.field public final synthetic c:Lww4;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltgb;->b:Lcom/cloud/tupdate/bean/UpdateEntity;

    iput-object p2, p0, Ltgb;->c:Lww4;

    iput-boolean p3, p0, Ltgb;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ltgb;->b:Lcom/cloud/tupdate/bean/UpdateEntity;

    iget-object v1, p0, Ltgb;->c:Lww4;

    iget-boolean p0, p0, Ltgb;->d:Z

    invoke-static {v0, v1, p0}, Lugb;->e(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;Z)V

    return-void
.end method
