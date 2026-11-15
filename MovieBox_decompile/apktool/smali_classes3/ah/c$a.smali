.class public Lah/c$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lah/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lah/b;

.field private b:Lah/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lah/b;

    .line 5
    .line 6
    invoke-direct {v0}, Lah/b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lah/c$a;->a:Lah/b;

    .line 10
    .line 11
    new-instance v0, Lah/c;

    .line 12
    .line 13
    invoke-direct {v0}, Lah/c;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lah/c$a;->b:Lah/c;

    .line 17
    .line 18
    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lah/c$a;->a:Lah/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lah/c$a;->b:Lah/c;

    .line 10
    .line 11
    iget-object v1, p0, Lah/c$a;->a:Lah/b;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lah/c;->b(Ljava/lang/CharSequence;)Lah/c;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public b()Lah/c;
    .locals 1

    .line 1
    invoke-direct {p0}, Lah/c$a;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lah/c$a;->b:Lah/c;

    .line 5
    .line 6
    return-object v0
.end method

.method public c(I)Lah/c$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lah/c$a;->a:Lah/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lah/b;->c(I)Lah/b;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public d(I)Lah/c$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lah/c$a;->a:Lah/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lah/b;->d(I)Lah/b;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public e(Ljava/lang/CharSequence;)Lah/c$a;
    .locals 1

    .line 1
    invoke-direct {p0}, Lah/c$a;->a()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lah/b;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lah/b;-><init>(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lah/c$a;->a:Lah/b;

    .line 10
    .line 11
    return-object p0
.end method

.method public f(Landroid/graphics/Typeface;)Lah/c$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lah/c$a;->a:Lah/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lah/b;->e(Landroid/graphics/Typeface;)Lah/b;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
