.class Lmb/b$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lmb/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmb/b;->d(Ljava/lang/String;Lmb/a$b;)Lmb/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Lmb/b;


# direct methods
.method constructor <init>(Lmb/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lmb/b$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p1, p0, Lmb/b$a;->b:Lmb/b;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
