.class public final synthetic Lbpc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8a$a;


# instance fields
.field public final synthetic a:Lcpc;


# direct methods
.method public synthetic constructor <init>(Lcpc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbpc;->a:Lcpc;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lbpc;->a:Lcpc;

    invoke-static {p0}, Lcpc;->a(Lcpc;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
