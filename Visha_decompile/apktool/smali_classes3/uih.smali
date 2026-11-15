.class public final synthetic Luih;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2i;


# instance fields
.field public final synthetic a:Lbph;


# direct methods
.method public synthetic constructor <init>(Lbph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luih;->a:Lbph;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Luih;->a:Lbph;

    check-cast p1, Lbuf;

    iput-object p1, p0, Lbph;->c:Lbuf;

    return-object p0
.end method
