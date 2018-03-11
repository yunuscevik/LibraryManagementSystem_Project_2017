<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="asked_question.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table>
        <tr>
            <td class="style6">

        <marquee scrollamount="1" direction="up"scrolldelay="50"  align="top" onmouseover="this.stop();" 
                    onmouseout="this.start();" style="height: 500px">



<h1 class="marTop0px">Sık Sorulan Sorular</h1>
<!-- Word Start -->
<div id="div_sss">
<h2>SAATLER VE ERİŞİM</h2>
<h3 id="soru35" style="cursor: hand" onclick="ShowOrHide('cevap35')"><strong>Aradığım kitap ödünç  alınmış, kimin aldığını öğrenebilir miyim?</strong></h3>
<p class="marLeft10px" id="cevap35">Hayır. Kütüphane ödünç bilgilerini kesinlikle üçüncü  kişilere vermemektedir.</p>
<h3 id="soru7" style="cursor: hand" onclick="ShowOrHide('cevap7')">Ödünç aldığım kitabı nereye iade edeceğim?</h3>
<p class="marLeft10px" id="cevap7">Hangi koleksiyonun bankosundan ödünç aldıysanız yine o bölüme (Ödünçverme, Yakın Doğu ve Reserv bankoları) iade edeceksiniz.</p>
<h3 id="soru33" style="cursor: hand" onclick="ShowOrHide('cevap33')"><strong>Şu an İstanbul  dışında olduğum için üzerimdeki kitapları kargo ile gönderebilir miyim?</strong></h3>
<p class="marLeft10px" id="cevap33">Tüm sorumluluk size ait olmak ve ödünç kitap iadesi olduğunu belirtmek kaydıyla, materyalleri Kütüphane Ödünç Verme Bölümü'ne gönderebilirsiniz.<br />
 &nbsp; &nbsp;  &nbsp; Ödünç Verme Bölümü<br />
 &nbsp; &nbsp;  &nbsp; 34342 Bebek İSTANBUL</strong></p>
<h3 id="soru34" style="cursor: hand" onclick="ShowOrHide('cevap34')"><strong>Kimliğimi versem,  benim adıma başka biri gelip kitap ödünç alabilir mi?</strong></h3>
<p class="marLeft10px" id="cevap34">Hayır, Kullanıcıyı sorumluluk altına sokan işlemleri  kullanıcı bizzat kendisi yapmak zorundadır.</p>
<h3 id="soru8" style="cursor: hand" onclick="ShowOrHide('cevap8')">Ne kadar kitap ödünç almış olduğumu ve iade tarihlerini hatırlamıyorum, öğrenebilir miyim?</h3>
<p class="marLeft10px" id="cevap8">Kütüphanedeyken Ödünçverme Bankosuna sorabilirsiniz, kütüphane dışındaysanız kütüphanenin web sayfasına girerek &quot;Kullanıcı Kaydı&quot;na tıklayınız. Ad ve soyadınız ile BÜ Kimlik kartınızdaki barkod numaranızı yazarak üzerinizde kaç kitap bulunduğunu ve iade tarihlerini öğrenebilirsiniz.</p>
<h3 id="soru9" style="cursor: hand" onclick="ShowOrHide('cevap9')">Süreli yayınları, referans materyallerini veya haritaları ödünç alabilir miyim?</h3>
<p class="marLeft10px" id="cevap9">Süreli yayınlar, referans materyalleri, haritalar ödünç verilmemektedir. Bu tip materyallerden istediğiniz bölümlerin fotokopisini kütüphane içinde sayfası 5 YKR'tan yaptırabilirsiniz.</p>
<h3 id="soru10" style="cursor: hand" onclick="ShowOrHide('cevap10')">Boğaziçi Üniversitesi'ne yeni kayıt yaptırdım, ödünç kitap alabilir miyim?</h3>
<p class="marLeft10px" id="cevap10">Kayıtlı bütün öğrenciler ve resmi olarak işe başlamış tüm personel Boğaziçi Üniversitesi Kimlik kartıyla ödünç kitap alabilir.</p>
<h3 id="soru11" style="cursor: hand" onclick="ShowOrHide('cevap11')">Kütüphaneye gelmeden ödünç aldığım kitabın iade süresini uzatabilir miyim?</h3>
<p class="marLeft10px" id="cevap11">Kütüphanenin web sayfasından &quot;Kullanıcı Kaydı&quot;na girerek materyalin iade süresini internet üzerinden uzatabilirsiniz (süre uzatma işlemi telefonla yapılmaz). Süre bitiminden önce kütüphane tarafından iade tarihini hatırlatan bir mesaj e-posta adresinize gönderilecektir. Lütfen e-posta adresinizi günlük olarak kontrol ediniz.</p>
<h3 id="soru12" style="cursor: hand" onclick="ShowOrHide('cevap12')">Ödünç alınmış bir kitabın kütüphaneye iade edildiğinden nasıl haberim olabilir veya iade edildiğinde başka bir kullanıcı ödünç almadan önce ben nasıl ödünç alabilirim?</h3>
<p class="marLeft10px" id="cevap12">Katalog üzerinde aradığınız kitabın ödünç alındığını görür ve iade edildikten sonra ödünç almak isterseniz, ekranın alt bölümündeki &quot;Request&quot;i tıklayarak ad, soyad ve BÜ kimlik kartınızdaki barkod numaranızı giriniz. Bu şekilde o kitap için &quot;hold&quot; işlemini gerçekleştirmiş olacaksınız. Kitap iade edildiğinde e-postanıza kitabı ödünç alabileceğinizi bildiren bir mesaj gönderilecek ve kitap 7 gün boyunca sizin için bekletilecektir. Lütfen ödünç alınabilecek durumdaki (available) materyal için &quot;hold&quot; işlemi yapmayınız.</p>
<h3 id="soru13" style="cursor: hand" onclick="ShowOrHide('cevap13')">Geçmişte ödünç alıp iade etmiş olduğum kitapların hangileri olduğunu nasıl öğrenebilirim?</h3>
<p class="marLeft10px" id="cevap13">Kütüphane web sitesinden &quot;Kullanıcı Kaydı&quot;nıza girdikten sonra &quot;My Reading History&quot; butonunu tıklayarak geçmişte hangi kitapları ödünç almış olduğunuzu öğrenebilirsiniz.</p>
<h3 id="soru36" style="cursor: hand" onclick="ShowOrHide('cevap36')"><strong>Aradığım kitap dönem  sonuna kadar ödünç verilmiş, bu normal mi? Sistem hatası olabilir mi?</strong></h3>
<p class="marLeft10px" id="cevap36">Ödünç verme kuralları gereği üniversitemiz öğretim  elemanları materyalleri dönem sonuna kadar ödünç alabilmektedir</p>
<h3 id="soru15" style="cursor: hand" onclick="ShowOrHide('cevap15')">Eğer ödünç aldığım materyali kaybedersem ne yapmalıyım?</h3>
<p class="marLeft10px" id="cevap15">Eğer kütüphaneye ait bir materyali kaybedersiniz lütfen hemen Ödünçverme Bölümü'ne haber veriniz, görevli personel size yapmanız gerekenleri ve yükümlülüklerinizi açıklayacaktır. Tel: +90 212 359 44 22</p>
<h2>KATALOG, SÜRELİ YAYINLAR VE VERİTABANLARI</h2>
<h3 id="soru17" style="cursor: hand" onclick="ShowOrHide('cevap17')">Katalog taraması sonucunda adını tespit ettiğim basılı süreli yayına nasıl ulaşabilirim?</h3>
<p class="marLeft10px" id="cevap17">Süreli yayının son sayılarını arıyorsanız Ciltlenmemiş Süreli Yayınlar Bölümü'ne bakınız. Aradığınız süreli yayın son sayılar değilse ve 1980 yılından sonra yayınlanmışsa Ciltlenmiş Süreli Yayınlar Bölümü'ne bakınız. Eğer aradığınız dergi 1980 öncesinde yayınlanmışsa lütfen Süreli Yayınlar Bölümü personeline danışınız.</p>
<p class="marLeft10px" id="cevap21">The Science Citation Index Expanded (SCI®), 150'den fazla değişik disiplinde yayınlanan dünyada önde gelen 6000'e yakın akademik bilim ve teknik derginin, eski ve yeni sayılarının bibliyografik bilgilerini, yazar abstraktlarını ve yapılmış atıf  bilgilerini bulundurur. <br />
<br />
<h3 id="soru23" style="cursor: hand" onclick="ShowOrHide('cevap23')">Elektronik kaynaklarda araştırma yapmayı nasıl öğrenebilirim?</h3>
<p class="marLeft10px" id="cevap23">Veritabanlarının çoğunda online kılavuzlar bulunmaktadır. Araştırma yapmak istediğiniz veritabanının sayfasına girdikten sonra &quot;help&quot; butonunu tıklayarak kılavuza erişebilirsiniz.</p>
<h3 id="soru24" style="cursor: hand" onclick="ShowOrHide('cevap24')">Elektronik kaynaklara kampüs dışından da erişebilir miyim?</h3>
<p class="marLeft10px" id="cevap24">Evet, kampüs dışındayken kütüphane web adresinden &quot;Proxy Ayarları&quot;na girerek buradaki adımları takip ediniz. Boğaziçi Üniversitesi'ne mensup değilseniz lütfen &quot;Kullanım Koşulları&quot;na bakınız.</p>
<h2>DİĞER BİLGİLER VE YARDIM</h2>
<h3 id="soru27" style="cursor: hand" onclick="ShowOrHide('cevap27')">Kütüphanede kullanabileceğim bilgisayar var mı?</h3>
<p class="marLeft10px" id="cevap27">Giriş katında ve birinci katta bulunan bilgisayarlardan kütüphane kataloğunu tarayabilir, ikinci katta bulunan bilgisayarlardan hem katalog taraması yapabilir hem de elektronik dergilere ve veritabanlarına erişebilirsiniz. Kütüphanede kablosuz internet erişimi mevcuttur, kendi taşınabilir bilgisayarınızı kullanabilirsiniz. Ayrıca kampüs içinde pek çok binada öğrencilerin ve personelin kullanımına ayrılmış bilgisayarlar bulunmaktadır.</p>
<h3 id="soru28" style="cursor: hand" onclick="ShowOrHide('cevap28')">Kütüphane içinde fotokopi hizmeti mevcut mu?</h3>
<p class="marLeft10px" id="cevap28">Fotokopi odası giriş katında Referans Bölümü'nün yakınındadır. Ayrıca ikinci katta Süreli Yayınlar Bölümü'nde de fotokopi hizmeti mevcuttur.</p>
<h3 id="soru29" style="cursor: hand" onclick="ShowOrHide('cevap29')">Kütüphanenin çıkışındaki alarm sisteminin nadir de olsa nedensiz şekilde uyarı sinyali vermesinin sebebi nedir?</h3>
<p class="marLeft10px" id="cevap29">Kütüphane alarm sistemleri, başka kütüphanelerin kitapları veya kitapevlerinden satın alınmış kitapların alarmları ve bazı durumlarda da cep telefonları ve diğer manyetik eşyalar nedeniyle  uyarı verebilmektedir. Eğer BÜ üniversitesinin kitapları nedeniyle alarm çalışırsa lütfen alarmı çalıştıran kitapları işlem yapılması için Ödünçverme Bölümü'ne geri götürünüz. Elimizde olmayan nedenlerle sizi mahcup duruma düşürmüş isek alarm sistemini ve bizi hoş görmenizi dileriz.</p>
<h3 id="soru30" style="cursor: hand" onclick="ShowOrHide('cevap30')">Kütüphaneye yiyecek ve içecek getirebilir miyim?</h3>
<p class="marLeft10px" id="cevap30">Kütüphaneye şişe suyu dışında içecek ve hiçbir yiyecek getirmeyiniz.</p>

        </marquee>
            </td>
        </tr>
    </table>
</asp:Content>

