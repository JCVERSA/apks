.class public final synthetic Lobj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyog;


# instance fields
.field public final synthetic a:Lwej;

.field public final synthetic b:Ll1f;


# direct methods
.method public synthetic constructor <init>(Lwej;Ll1f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lobj;->a:Lwej;

    iput-object p2, p0, Lobj;->b:Ll1f;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lenj;)V
    .locals 1

    iget-object v0, p0, Lobj;->a:Lwej;

    iget-object p0, p0, Lobj;->b:Ll1f;

    check-cast p1, Ltaj;

    invoke-static {v0, p0, p1, p2}, Lwej;->X(Lwej;Ll1f;Ltaj;Lenj;)V

    return-void
.end method
