.class public final Lcn9;
.super Lxm9;
.source "SourceFile"


# instance fields
.field public final a:Lmn9;


# direct methods
.method public constructor <init>(Lmn9;)V
    .locals 0

    invoke-direct {p0}, Lxm9;-><init>()V

    iput-object p1, p0, Lcn9;->a:Lmn9;

    return-void
.end method


# virtual methods
.method public q(Lin9;)V
    .locals 0

    iget-object p0, p0, Lcn9;->a:Lmn9;

    invoke-interface {p0, p1}, Lmn9;->a(Lin9;)V

    return-void
.end method
