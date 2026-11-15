.class public final synthetic Ljy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loj8;


# instance fields
.field public final synthetic a:Lky0;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lky0;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljy0;->a:Lky0;

    iput-object p2, p0, Ljy0;->b:Ljava/lang/String;

    iput-object p3, p0, Ljy0;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ljy0;->a:Lky0;

    iget-object v1, p0, Ljy0;->b:Ljava/lang/String;

    iget-object p0, p0, Ljy0;->c:[Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lky0;->b(Lky0;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method
