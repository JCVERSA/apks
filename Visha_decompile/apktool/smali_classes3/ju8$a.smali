.class public Lju8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkk8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lju8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Lkk8;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lkk8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lju8$a;->a:Ljava/util/Set;

    iput-object p2, p0, Lju8$a;->b:Lkk8;

    return-void
.end method
