.class public final synthetic Lb6h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2i;


# instance fields
.field public final synthetic a:Lc6h;


# direct methods
.method public synthetic constructor <init>(Lc6h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb6h;->a:Lc6h;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lb6h;->a:Lc6h;

    check-cast p1, Loeh;

    invoke-static {p0, p1}, Lc6h;->a(Lc6h;Loeh;)Ld6h;

    move-result-object p0

    return-object p0
.end method
