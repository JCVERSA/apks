.class public final synthetic Lrjg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3f;


# instance fields
.field public final synthetic a:Ltjg;

.field public final synthetic b:Lejf;


# direct methods
.method public synthetic constructor <init>(Ltjg;Lejf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrjg;->a:Ltjg;

    iput-object p2, p0, Lrjg;->b:Lejf;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lrjg;->a:Ltjg;

    iget-object p0, p0, Lrjg;->b:Lejf;

    check-cast p1, Lejf;

    invoke-static {v0, p0, p1, p2}, Ltjg;->f(Ltjg;Lejf;Lejf;Ljava/util/Map;)V

    return-void
.end method
