.class public Lar6$b;
.super Ljava/awt/event/MouseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lar6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lar6;


# direct methods
.method public constructor <init>(Lar6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lar6$b;->a:Lar6;

    invoke-direct {p0}, Ljava/awt/event/MouseAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lar6;Lar6$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lar6$b;-><init>(Lar6;)V

    return-void
.end method
