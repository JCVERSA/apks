.class public final synthetic Lok0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpk0$b;


# instance fields
.field public final synthetic a:Lpk0;

.field public final synthetic b:Landroid/net/Uri;

.field public final synthetic c:Lgu1;


# direct methods
.method public synthetic constructor <init>(Lpk0;Landroid/net/Uri;Lgu1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lok0;->a:Lpk0;

    iput-object p2, p0, Lok0;->b:Landroid/net/Uri;

    iput-object p3, p0, Lok0;->c:Lgu1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lok0;->a:Lpk0;

    iget-object v1, p0, Lok0;->b:Landroid/net/Uri;

    iget-object p0, p0, Lok0;->c:Lgu1;

    invoke-static {v0, v1, p0}, Lpk0;->a(Lpk0;Landroid/net/Uri;Lgu1;)V

    return-void
.end method
