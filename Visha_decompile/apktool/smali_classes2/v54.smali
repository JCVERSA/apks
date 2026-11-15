.class public final synthetic Lv54;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo74;


# instance fields
.field public final synthetic b:Lz54;


# direct methods
.method public synthetic constructor <init>(Lz54;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv54;->b:Lz54;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lv54;->b:Lz54;

    check-cast p1, Ltua;

    invoke-virtual {p0, p1}, Lz54;->l(Ltua;)Ltua;

    move-result-object p0

    return-object p0
.end method
