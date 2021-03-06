package tibia.sessiondump.hints.condition
{
   import shared.utility.Vector3D;
   
   public class HintConditionMove extends HintConditionBase
   {
      
      private static var FIELD_TEXTHINT:String = "texthint";
      
      private static var FIELD_COORDINATE:String = "coordinate";
      
      private static var FIELD_SESSIONDUMP:String = "sessiondump";
      
      private static var FIELD_DESTINATION_COORDINATE:String = "destination";
      
      private static var FIELD_CONDITIONDATA:String = "conditiondata";
      
      private static var FIELD_CHANNEL:String = "channel";
      
      private static var FIELD_TYPE:String = "type";
      
      private static var FIELD_CONDITIONTYPE:String = "conditiontype";
      
      private static var FIELD_USE_TYPE_ID:String = "usetypeid";
      
      private static var FIELD_PLAYER_OUTFIT_COLOR_TORSO:String = "color-torso";
      
      private static var FIELD_OBJECTTYPE:String = "objecttype";
      
      private static var CONDITION_TYPE_CLICK_CREATURE:String = "CLICK_CREATURE";
      
      private static var FIELD_OFFSET:String = "offset";
      
      private static var FIELD_OBJECTTYPEID:String = "objecttypeid";
      
      private static var FIELD_POSITION:String = "position";
      
      private static var FIELD_TARGET:String = "target";
      
      private static var FIELD_PLAYER_OUTFIT:String = "player-outfit";
      
      private static var FIELD_UIELEMENT:String = "uielement";
      
      private static var FIELD_PLAYER_OUTFIT_COLOR_DETAIL:String = "color-detail";
      
      private static var FIELD_MULTIUSE_TARGET:String = "multiusetarget";
      
      private static var FIELD_CHANNEL_ID:String = "channelid";
      
      private static var FIELD_CREATURE_ID:String = "creatureid";
      
      private static var CONDITION_TYPE_DRAG_DROP:String = "DRAG_DROP";
      
      private static var FIELD_MULTIUSE_OBJECT_POSITION:String = "multiuseobjectposition";
      
      private static var FIELD_PLAYER_NAME:String = "player-name";
      
      private static var FIELD_PLAYER_OUTFIT_ID:String = "id";
      
      private static var FIELD_PLAYER_OUTFIT_COLOR_LEGS:String = "color-legs";
      
      private static var FIELD_SKIP_TO_TIMESTAMP:String = "skiptotimestamp";
      
      private static var FIELD_MULTIUSE_OBJECT_ID:String = "multiuseobjectid";
      
      private static var FIELD_TUTORIAL_PROGRESS:String = "tutorialprogress";
      
      private static var FIELD_TIMESTAMP:String = "timestamp";
      
      public static const TYPE:String = "MOVE";
      
      private static var FIELD_USEDESTINATIONPOSITION:String = "usedestinationposition";
      
      private static var FIELD_PLAYER_OUTFIT_ADDONS:String = "add-ons";
      
      private static var FIELD_AMOUNT:String = "amount";
      
      private static var FIELD_OBJECTID:String = "objectid";
      
      private static var FIELD_CREATURE_NAME:String = "creaturename";
      
      private static var CONDITION_TYPE_CLICK:String = "CLICK";
      
      private static var FIELD_OBJECTDATA:String = "objectdata";
      
      private static var FIELD_TEXT:String = "text";
      
      private static var FIELD_OBJECTINDEX:String = "objectindex";
      
      private static var FIELD_SOURCE_COORDINATE:String = "source";
      
      private static var FIELD_PLAYER_OUTFIT_COLOR_HEAD:String = "color-head";
       
      
      private var m_MapCoordinate:Vector3D = null;
      
      protected var m_ObjectTypeID:int = -1;
      
      protected var m_ObjectAmount:int = 0;
      
      protected var m_SourceAbsolute:Vector3D = null;
      
      protected var m_DestAbsolute:Vector3D = null;
      
      protected var m_Position:int = -1;
      
      public function HintConditionMove()
      {
         super();
         m_Type = TYPE;
      }
      
      public static function s_Unmarshall(param1:Object) : HintConditionMove
      {
         var _loc2_:HintConditionMove = null;
         if(param1 != null && FIELD_SOURCE_COORDINATE in param1 && FIELD_OBJECTTYPEID in param1 && FIELD_AMOUNT in param1 && FIELD_DESTINATION_COORDINATE in param1)
         {
            _loc2_ = new HintConditionMove();
            _loc2_.m_SourceAbsolute = HintConditionBase.s_UnmarshallCoordinate(param1[FIELD_SOURCE_COORDINATE]);
            _loc2_.m_ObjectTypeID = param1[FIELD_OBJECTTYPEID] as int;
            _loc2_.m_ObjectAmount = param1[FIELD_AMOUNT] as int;
            _loc2_.m_DestAbsolute = HintConditionBase.s_UnmarshallCoordinate(param1[FIELD_DESTINATION_COORDINATE]);
            return _loc2_;
         }
         throw new ArgumentError("HintConditionMove.s_Unmarshall: Invalid hint data");
      }
      
      public function get objectPosition() : int
      {
         return this.m_Position;
      }
      
      public function get objectTypeID() : int
      {
         return this.m_ObjectTypeID;
      }
      
      public function get objectAmount() : int
      {
         return this.m_ObjectAmount;
      }
      
      public function get sourcePosition() : Vector3D
      {
         return this.m_SourceAbsolute;
      }
      
      public function get destinationPosition() : Vector3D
      {
         return this.m_DestAbsolute;
      }
   }
}
