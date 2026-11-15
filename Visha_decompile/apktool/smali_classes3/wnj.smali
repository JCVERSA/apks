.class public final Lwnj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lbnj;

.field public final b:Lzmj;


# direct methods
.method public synthetic constructor <init>(Lbnj;Lzmj;Lxnj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwnj;->a:Lbnj;

    iput-object p2, p0, Lwnj;->b:Lzmj;

    return-void
.end method

.method public static bridge synthetic a(Lwnj;)Lzmj;
    .locals 0

    iget-object p0, p0, Lwnj;->b:Lzmj;

    return-object p0
.end method

.method public static bridge synthetic b(Lwnj;)Lbnj;
    .locals 0

    iget-object p0, p0, Lwnj;->a:Lbnj;

    return-object p0
.end method
