GDPC                                                                               @   res://.import/death.png-cf2d4c96e4698d246b2d718ac9a90534.stex   �      �      �\��QN�Vӫ��=�@   res://.import/finish.png-03532f1ddcf191572714d1095f489a4a.stex  �      ^       �N+,Յw���W�~�<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�      �      &�y���ڞu;>��.p   res://Game.tscn �      �      �;����g�/��   res://Win.tscn  `      5       �2	��� ��p�]   res://death.gd.remap�+              �Uťx,S��GB�ݶU   res://death.gdc �      �       ńA��� �࿔��1r�   res://death.png.import  �      �      \�>��EeM(��b̑   res://default_env.tres  0      �       um�`�N��<*ỳ�8   res://finish.gd.remap   ,      !       F��q�/�X��-��M�   res://finish.gdc�      �       �j]��l<�id:����   res://finish.png.import        �      q�H�]a�w���;�U�v   res://icon.png  p,      �      G1?��z�c��vN��   res://icon.png.import   �$      �      ��fe��6�B��^ U�   res://player.gd.remap   @,      !       �ؿk�5s0n��;P   res://player.gdc`'      �      ��ʋT^{,��.����   res://project.binary`9      �      ����@���i�d�v�B�[gd_scene load_steps=12 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]
[ext_resource path="res://player.gd" type="Script" id=2]
[ext_resource path="res://death.png" type="Texture" id=3]
[ext_resource path="res://death.gd" type="Script" id=4]
[ext_resource path="res://finish.png" type="Texture" id=5]
[ext_resource path="res://finish.gd" type="Script" id=6]

[sub_resource type="CapsuleShape2D" id=1]
radius = 31.0
height = 0.0

[sub_resource type="ConvexPolygonShape2D" id=2]
points = PoolVector2Array( 64, 64, 0, 64, 0, 0, 64, 0 )

[sub_resource type="TileSet" id=3]
0/name = "icon.png 0"
0/texture = ExtResource( 1 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 0, 0, 64, 64 )
0/tile_mode = 0
0/occluder_offset = Vector2( 0, 0 )
0/navigation_offset = Vector2( 0, 0 )
0/shape_offset = Vector2( 0, 0 )
0/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
0/shape = SubResource( 2 )
0/shape_one_way = false
0/shape_one_way_margin = 1.0
0/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 2 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
0/z_index = 0

[sub_resource type="RectangleShape2D" id=4]
extents = Vector2( 32, 32 )

[sub_resource type="RectangleShape2D" id=5]
extents = Vector2( 32, 32 )

[node name="Main" type="Node2D"]

[node name="player" type="KinematicBody2D" parent="."]
position = Vector2( 263, 225 )
script = ExtResource( 2 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="player"]
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="player"]
shape = SubResource( 1 )

[node name="Camera2D" type="Camera2D" parent="player"]
current = true
smoothing_enabled = true

[node name="floor" type="TileMap" parent="."]
tile_set = SubResource( 3 )
format = 1
tile_data = PoolIntArray( 196622, 0, 0, 196623, 0, 0, 196624, 0, 0, 196625, 0, 0, 196637, 0, 0, 196638, 0, 0, 196639, 0, 0, 196640, 0, 0, 327687, 0, 0, 327688, 0, 0, 327689, 0, 0, 327690, 0, 0, 327691, 0, 0, 327692, 0, 0, 327693, 0, 0, 327698, 0, 0, 327699, 0, 0, 327700, 0, 0, 327701, 0, 0, 327702, 0, 0, 327706, 0, 0, 327707, 0, 0, 327708, 0, 0, 393217, 0, 0, 393218, 0, 0, 393219, 0, 0, 393220, 0, 0, 393221, 0, 0, 393222, 0, 0, 393223, 0, 0, 458782, 0, 0, 458783, 0, 0, 458784, 0, 0, 458785, 0, 0, 524311, 0, 0, 524312, 0, 0, 524313, 0, 0, 524314, 0, 0, 524315, 0, 0, 524316, 0, 0 )

[node name="death" type="Area2D" parent="."]
position = Vector2( 416, 352 )
script = ExtResource( 4 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="death"]
texture = ExtResource( 3 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="death"]
shape = SubResource( 4 )

[node name="finish" type="Area2D" parent="."]
position = Vector2( 2081, 161 )
script = ExtResource( 6 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="finish"]
texture = ExtResource( 5 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="finish"]
shape = SubResource( 5 )

[connection signal="body_entered" from="death" to="death" method="_on_death_body_entered"]
[connection signal="body_entered" from="finish" to="finish" method="_on_finish_body_entered"]
          [gd_scene format=2]

[node name="Win" type="Node2D"]
           GDSC                  ���ׄ�   ���������������������Ҷ�   ���϶���   ���Ӷ���   ������ض      player                     
                  3YY0�  P�  QV�  &�  T�  V�  �  T�  PQY`          GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?� o�*�$K�ٝ������o��arl۪�{��2eH�D\DBT���7�$�V��#�L`���O���N��"B�@�� � D -� �T,�_$��V,�@+�)��PRhi	�JJ  H
��+"�@ ����!hD$�e �E�ń!�� �T,-��)��=ʿ�� Z1@�HC�!� �8<$�����,��H�����=����5�{����d	b���6���Vfm����C�a�l�E�n���+���N�Rt��
�(M��ݻR����}���(�w�"^�g[.����0k7k�o2�%Z�SU4(��J��l�i� ��+�U��A�6nG�ӿ��f�f�,��w��m��HwGk{����c۶gm۶m�z�����ɛw�9��  �o!�~l�����`f�~��ff�,�~<D ٻ�l��m�.Y$o��� ���xqq�J�:a����-�%����&ev�@Dc��� ����w�r�$\��7o�"6�*'Q-�  �D�8��z��0)9)����X��Fd�1��M���&8�T9�8.ضW�u��v�s�r*=psm�\�tqKF���!��$�$8��<|��8����D��1yda�����J��mv7QiYZSJD�=��s�Fב�u��:�dR:��\�F�O�b�2���93�rl�J�c_�3C��K%���1R�I�Y�@#cE]�s\�����I�Ŏ$)�DMӁ��b3�����&�/K�����C���UP����~��h��>��~;�P��Xf���뺾���ݺ"<֍G��Ks���(��Oǂ�tL�֑۟C���}�ַ�'u]?�Ǎ(q�td��{��7�{x��O�%*P�L`Tl� Htǎf��D�Ud�w��^Uu�]���a�6+,")�^^}RRx�,m$�h��D �j�0�n��� 0Q��t�KD�\:���؝a�y~i3Q�����Pt
z}J�>���N��0ꫜ�^���O�xT�r#�z!���2�5W��R᪹øL4���S�t��д��D��&jZ@X؊�NA&N���֯r{�r��Z���`�D���z�$���V廂���ͱ"��,!����s;et��OL�� ����I٥D��I+��4��`�YD����ɷ�.n`�(���G�o`y*���3�3saf�X�� @�O!�?               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/death.png-cf2d4c96e4698d246b2d718ac9a90534.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://death.png"
dest_files=[ "res://.import/death.png-cf2d4c96e4698d246b2d718ac9a90534.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
           [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDSC                  ���ׄ�   ����������������������Ҷ   ���϶���   ���Ӷ���   �����޶�      player                     
                  3YY0�  P�  QV�  &�  T�  V�  �  T�  PQY`          GDST@   @            B   WEBPRIFF6   WEBPVP8L)   /?� 0��?��xPԶT�������?� Ea�r�p��   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/finish.png-03532f1ddcf191572714d1095f489a4a.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://finish.png"
dest_files=[ "res://.import/finish.png-03532f1ddcf191572714d1095f489a4a.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDSC         !   �      ������������τ�   �������   �������϶���   ��������   ����Ҷ��   ���������Ҷ�   �������������ض�   �����϶�   �������ض���   �������Ŷ���   ����׶��   ϶��   ���������������Ŷ���   ζ��   ����¶��   �������Ŷ���   �������������Ӷ�   �涶   ���������������������Ҷ�   ����������Ķ   �������ׄ�������������Ҷ   ���׶���   ������ض   �����޶�   �������Ӷ���   �����������Ӷ���   �     ,     �     �        left      right         jump      res://Win.tscn                                             "      #   	   )   
   -      .      5      6      >      B      C      J      Y      a      l      y      �      �      �      �      �      �      �      �      �      �       �   !   3YY:�  Y;�  �  T�  Y8;�  �  Y8;�  �  Y;�  �  T�  YY0�  PQV�  �  �  �  Y0�	  P�
  QV�  �  &�  T�  �  V�  �  �  YY0�  P�
  QV�  �  T�  �  T�  P�  R�  Q�  �  �  T�  �  �
  �  �  �  P�  R�  T�  Q�  &�  T�  P�  Q�  PQV�  �  T�  �  YYY0�  P�  QV�  -YY0�  PQV�  �  �  YY0�  PQV�  �  PQT�  P�  QY`        [remap]

path="res://death.gdc"
[remap]

path="res://finish.gdc"
               [remap]

path="res://player.gdc"
               �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name         SimplePlatformGame     application/run/main_scene         res://Game.tscn    application/config/icon         res://icon.png  +   gui/common/drop_mouse_on_gui_input_disabled            input/right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      physical_scancode             unicode           echo          script      
   input/left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      physical_scancode             unicode           echo          script      
   input/jump�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      physical_scancode             unicode           echo          script      )   physics/common/enable_pause_aware_picking         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres           