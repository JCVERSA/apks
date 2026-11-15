.class public final synthetic Ltdj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liog;


# instance fields
.field public final synthetic a:Lraj;

.field public final synthetic b:I

.field public final synthetic c:Lv0f;

.field public final synthetic d:Lv0f;


# direct methods
.method public synthetic constructor <init>(Lraj;ILv0f;Lv0f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltdj;->a:Lraj;

    iput p2, p0, Ltdj;->b:I

    iput-object p3, p0, Ltdj;->c:Lv0f;

    iput-object p4, p0, Ltdj;->d:Lv0f;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ltaj;

    iget-object v0, p0, Ltdj;->a:Lraj;

    iget-object v1, p0, Ltdj;->d:Lv0f;

    iget v2, p0, Ltdj;->b:I

    iget-object p0, p0, Ltdj;->c:Lv0f;

    invoke-interface {p1, v0, p0, v1, v2}, Ltaj;->b(Lraj;Lv0f;Lv0f;I)V

    return-void
.end method
