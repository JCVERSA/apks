.class public Ln20$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln20$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Ln20$a$a;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ln20$a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Ln20$a$a;->a:Ljava/lang/Boolean;

    .line 3
    invoke-static {p1}, Ln20$a;->b(Ln20$a;)Ljava/lang/String;

    .line 4
    invoke-static {p1}, Ln20$a;->d(Ln20$a;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ln20$a$a;->a:Ljava/lang/Boolean;

    .line 5
    invoke-static {p1}, Ln20$a;->c(Ln20$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ln20$a$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ln20$a$a;
    .locals 0

    iput-object p1, p0, Ln20$a$a;->b:Ljava/lang/String;

    return-object p0
.end method
