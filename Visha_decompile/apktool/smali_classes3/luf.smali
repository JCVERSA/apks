.class public final synthetic Lluf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Louf;

.field public final synthetic b:Lv7i;

.field public final synthetic c:Lim5;


# direct methods
.method public synthetic constructor <init>(Louf;Lv7i;Lim5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lluf;->a:Louf;

    iput-object p2, p0, Lluf;->b:Lv7i;

    iput-object p3, p0, Lluf;->c:Lim5;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 2

    iget-object v0, p0, Lluf;->a:Louf;

    iget-object v1, p0, Lluf;->b:Lv7i;

    iget-object p0, p0, Lluf;->c:Lim5;

    check-cast p1, Lbuf;

    invoke-static {v0, v1, p0, p1}, Louf;->a(Louf;Lv7i;Lim5;Lbuf;)Lim5;

    move-result-object p0

    return-object p0
.end method
