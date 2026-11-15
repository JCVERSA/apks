.class public final Liw7$q;
.super Liw7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liw7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "q"
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Liw7;-><init>()V

    iput-object p1, p0, Liw7$q;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Lat8;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Liw7$q;->a:Ljava/lang/Class;

    invoke-virtual {p1, p0, p2}, Lat8;->h(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
