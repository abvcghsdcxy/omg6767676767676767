--!strict
-- AUTO-GENERATED from rbxcli_docs.json by scripts/generate-luau-defs.mjs. Do not edit.
-- Load with: luau-lsp analyze --definitions=@rbxcli=rbxcli_docs.d.luau

declare class Enum
	function GetEnumItems(self): {any}
	function FromValue(self, value: number): any
	function FromName(self, name: string): any
end

declare class EnumItem
	Name: string
	Value: number
	EnumType: Enum
	function IsA(self, enumName: string): boolean
end

declare class EventConnection
	Connected: boolean
	function Disconnect(self): ()
end

export type Event<A... = ...any> = {
	Connect: (self: Event<A...>, callback: (A...) -> ()) -> EventConnection,
	Once: (self: Event<A...>, callback: (A...) -> ()) -> EventConnection,
	Wait: (self: Event<A...>) -> (A...),
}

-- Stubs for referenced-but-undefined types (kept self-contained).
type Ed25519 = any
type Poly1305 = any
type RbxPlayer = any
type RemoteEvent = any
type UnreliableRemoteEvent = any
type Value = any
type Vector3 = any

declare class ControlKind extends EnumItem
end
declare class ControlKindItems extends Enum
	Button: ControlKind
	Color: ControlKind
	Dropdown: ControlKind
	Input: ControlKind
	Keybind: ControlKind
	Label: ControlKind
	Separator: ControlKind
	SliderFloat: ControlKind
	SliderInt: ControlKind
	Toggle: ControlKind
end

declare class EasingDirection extends EnumItem
end
declare class EasingDirectionItems extends Enum
	In: EasingDirection
	InOut: EasingDirection
	Out: EasingDirection
end

declare class EasingStyle extends EnumItem
end
declare class EasingStyleItems extends Enum
	Back: EasingStyle
	Bounce: EasingStyle
	Circular: EasingStyle
	Cubic: EasingStyle
	Elastic: EasingStyle
	Exponential: EasingStyle
	Linear: EasingStyle
	Quad: EasingStyle
	Quart: EasingStyle
	Quint: EasingStyle
	Sine: EasingStyle
end

declare class EntityActionResult extends EnumItem
end
declare class EntityActionResultItems extends Enum
	DuplicateId: EntityActionResult
	InvalidArgument: EntityActionResult
	NotFound: EntityActionResult
	Success: EntityActionResult
end

declare class EntityKind extends EnumItem
end
declare class EntityKindItems extends Enum
	NPC: EntityKind
	Player: EntityKind
	Unknown: EntityKind
end

declare class EntityRelation extends EnumItem
end
declare class EntityRelationItems extends Enum
	Enemy: EntityRelation
	Neutral: EntityRelation
	Self: EntityRelation
	Teammate: EntityRelation
end

declare class EntitySearchMode extends EnumItem
end
declare class EntitySearchModeItems extends Enum
	BFS: EntitySearchMode
	DFS: EntitySearchMode
	First: EntitySearchMode
end

declare class InputState extends EnumItem
end
declare class InputStateItems extends Enum
	AlreadyPressed: InputState
	Failed: InputState
	OutOfFocus: InputState
	Success: InputState
end

declare class KeyCode extends EnumItem
end
declare class KeyCodeItems extends Enum
	A: KeyCode
	Add: KeyCode
	Alt: KeyCode
	Apps: KeyCode
	B: KeyCode
	Backspace: KeyCode
	C: KeyCode
	CapsLock: KeyCode
	Clear: KeyCode
	Control: KeyCode
	D: KeyCode
	Decimal: KeyCode
	Delete: KeyCode
	Divide: KeyCode
	Down: KeyCode
	E: KeyCode
	Eight: KeyCode
	End: KeyCode
	Escape: KeyCode
	Execute: KeyCode
	F: KeyCode
	F1: KeyCode
	F10: KeyCode
	F11: KeyCode
	F12: KeyCode
	F2: KeyCode
	F3: KeyCode
	F4: KeyCode
	F5: KeyCode
	F6: KeyCode
	F7: KeyCode
	F8: KeyCode
	F9: KeyCode
	Five: KeyCode
	Four: KeyCode
	G: KeyCode
	H: KeyCode
	Help: KeyCode
	Home: KeyCode
	I: KeyCode
	Insert: KeyCode
	J: KeyCode
	K: KeyCode
	L: KeyCode
	LWin: KeyCode
	Left: KeyCode
	LeftAlt: KeyCode
	LeftButton: KeyCode
	LeftControl: KeyCode
	LeftShift: KeyCode
	M: KeyCode
	MiddleButton: KeyCode
	Multiply: KeyCode
	N: KeyCode
	Nine: KeyCode
	NumLock: KeyCode
	NumPad0: KeyCode
	NumPad1: KeyCode
	NumPad2: KeyCode
	NumPad3: KeyCode
	NumPad4: KeyCode
	NumPad5: KeyCode
	NumPad6: KeyCode
	NumPad7: KeyCode
	NumPad8: KeyCode
	NumPad9: KeyCode
	O: KeyCode
	One: KeyCode
	P: KeyCode
	PageDown: KeyCode
	PageUp: KeyCode
	Pause: KeyCode
	Print: KeyCode
	PrintScreen: KeyCode
	Q: KeyCode
	R: KeyCode
	RWin: KeyCode
	Return: KeyCode
	Right: KeyCode
	RightAlt: KeyCode
	RightButton: KeyCode
	RightControl: KeyCode
	RightShift: KeyCode
	S: KeyCode
	ScrollLock: KeyCode
	Select: KeyCode
	Separator: KeyCode
	Seven: KeyCode
	Shift: KeyCode
	Six: KeyCode
	Space: KeyCode
	Subtract: KeyCode
	T: KeyCode
	Tab: KeyCode
	Three: KeyCode
	Two: KeyCode
	U: KeyCode
	Up: KeyCode
	V: KeyCode
	W: KeyCode
	X: KeyCode
	Y: KeyCode
	Z: KeyCode
	Zero: KeyCode
end

declare class KeybindMode extends EnumItem
end
declare class KeybindModeItems extends Enum
	PressAndHold: KeybindMode
	Toggle: KeybindMode
end

declare class PlaybackState extends EnumItem
end
declare class PlaybackStateItems extends Enum
	Begin: PlaybackState
	Cancelled: PlaybackState
	Completed: PlaybackState
	Delayed: PlaybackState
	InstanceDeleted: PlaybackState
	Paused: PlaybackState
	Playing: PlaybackState
end

declare class ProcessReadResult extends EnumItem
end
declare class ProcessReadResultItems extends Enum
	Failed: ProcessReadResult
	PagedOut: ProcessReadResult
	PartialRead: ProcessReadResult
	Successful: ProcessReadResult
end

declare class ProcessWriteResult extends EnumItem
end
declare class ProcessWriteResultItems extends Enum
	Failed: ProcessWriteResult
	PagedOut: ProcessWriteResult
	PartialWrite: ProcessWriteResult
	Successful: ProcessWriteResult
end

declare class SliderValueType extends EnumItem
end
declare class SliderValueTypeItems extends Enum
	Float: SliderValueType
	Int: SliderValueType
end

declare class TabIcon extends EnumItem
end
declare class TabIconItems extends Enum
	BadgeInformation: TabIcon
	Bone: TabIcon
	Box3D: TabIcon
	Brain: TabIcon
	Bug: TabIcon
	CloudDownload: TabIcon
	CloudWarning: TabIcon
	Code: TabIcon
	Cpu: TabIcon
	CrossedDiskette: TabIcon
	Crosshair: TabIcon
	Database: TabIcon
	Diskette: TabIcon
	Earth: TabIcon
	Eye: TabIcon
	FileText: TabIcon
	Flag: TabIcon
	Gauge: TabIcon
	Hammer: TabIcon
	Heart: TabIcon
	House: TabIcon
	Human: TabIcon
	Joystick: TabIcon
	KeyRound: TabIcon
	Keyboard: TabIcon
	Layers: TabIcon
	LightBulb: TabIcon
	List: TabIcon
	Monitor: TabIcon
	Network: TabIcon
	Palette: TabIcon
	PersonStanding: TabIcon
	Radar: TabIcon
	RefreshCw: TabIcon
	Route: TabIcon
	Ruler: TabIcon
	Settings: TabIcon
	Shapes: TabIcon
	Shield: TabIcon
	ShieldAlert: TabIcon
	Target: TabIcon
	TextType: TabIcon
	Timer: TabIcon
	User: TabIcon
	Users: TabIcon
	Waypoints: TabIcon
	Zap: TabIcon
end

declare class UserInputType extends EnumItem
end
declare class UserInputTypeItems extends Enum
	Focus: UserInputType
	Keyboard: UserInputType
	MouseButton1: UserInputType
	MouseButton2: UserInputType
	MouseButton3: UserInputType
	MouseMovement: UserInputType
	MouseWheel: UserInputType
	None: UserInputType
end

declare class ValidatorKind extends EnumItem
end
declare class ValidatorKindItems extends Enum
	CheckForChild: ValidatorKind
	CheckForChildOfClass: ValidatorKind
	CheckForChildWhichIsA: ValidatorKind
	CheckMeshId: ValidatorKind
	CheckTextureId: ValidatorKind
	GetAttribute: ValidatorKind
	GetValue: ValidatorKind
end

declare Enum: {
	ControlKind: ControlKindItems,
	EasingDirection: EasingDirectionItems,
	EasingStyle: EasingStyleItems,
	EntityActionResult: EntityActionResultItems,
	EntityKind: EntityKindItems,
	EntityRelation: EntityRelationItems,
	EntitySearchMode: EntitySearchModeItems,
	InputState: InputStateItems,
	KeyCode: KeyCodeItems,
	KeybindMode: KeybindModeItems,
	PlaybackState: PlaybackStateItems,
	ProcessReadResult: ProcessReadResultItems,
	ProcessWriteResult: ProcessWriteResultItems,
	SliderValueType: SliderValueTypeItems,
	TabIcon: TabIconItems,
	UserInputType: UserInputTypeItems,
	ValidatorKind: ValidatorKindItems,
}

type DecompilerOptions = {
	DecompilationKind: string,
}

type EntitySearchEntry = {
	EntityKind: EntityKind,
	EntityRelation: EntityRelation?,
	EvaluationDistance: number?,
	FirstValidChild: boolean,
	Id: string,
	IgnoredNames: { string }?,
	Name: string,
	ScanValidatorTree: { ValidatorEntry },
	SearchMode: EntitySearchMode,
	SearchPath: string,
	Team: EntityTeamSpec?,
	TeamScanContext: EntityTeamScanContext?,
}

type EntitySearchEntrySchema = {
	enums: { [string]: { string } },
	example: any,
	optional: { { any } },
	required: { { any } },
	team: { { any } },
	validatorEntry: string,
	validatorKinds: { string },
}

type EntitySnapshot = {
	Character: Instance?,
	DisplayName: string?,
	Head: BasePart?,
	Health: number?,
	Humanoid: Humanoid?,
	IsBot: boolean,
	Kind: EntityKind,
	MaxHealth: number?,
	Player: RbxPlayer?,
	PrimaryPart: BasePart?,
	Relation: EntityRelation,
	TeamColor: Color4?,
	TeamName: string?,
	Username: string?,
}

type EntitySpecificationEntry = {
	AssociatedPlayer: RbxPlayer?,
	CharacterRoot: Instance,
	CustomBones: { { any } }?,
	Head: BasePart?,
	Humanoid: Humanoid?,
	Name: string?,
	PrimaryPart: BasePart?,
	Relation: EntityRelation?,
	TeamColor: Color4?,
	TeamName: string?,
	Type: EntityKind?,
}

type EntityTeamScanContext = {
	IfObjectFails: EntityRelation,
	IfObjectPasses: EntityRelation,
	TeamColorOnFail: Color4?,
	TeamColorOnPass: Color4?,
	TeamNameOnFail: string,
	TeamNameOnPass: string,
	TeamValidatorTree: { ValidatorEntry },
}

type EntityTeamSpec = {
	Relation: EntityRelation,
	TeamColor: Color4?,
	TeamName: string,
}

type HttpRequestOptions = {
	Body: string?,
	Headers: { [string]: string }?,
	Method: string?,
	Url: string,
}

type HttpResponse = {
	Body: string,
	Headers: { [string]: string },
	StatusCode: number,
	StatusMessage: string,
	Success: boolean,
}

type LoadstringOptions = {
	chunkname: string?,
	dbg: number?,
	native: boolean?,
	opt: number?,
	typeinfo: number?,
}

type ProductInformation = {
	build: string,
	built_for_roblox_version: string,
	name: string,
	version: string,
}

type RaycastResult = {
	distance: number,
	hit_successful: boolean,
	instance: BasePart?,
	position: Vector3,
}

type ValidatorEntry = {
	ClassName: string?,
	Expect: any?,
	Name: string?,
	Target: string?,
	Validator: ValidatorKind,
}

declare class Instance
	Name: string -- @since 0.9.1-dev
	ClassName: string -- @since 0.9.1-dev
	Address: number -- @since 0.9.1-dev
	Parent: Instance -- @since 0.2.4-alpha
	function GetChildren(self): { Instance } -- @since 0.9.1-dev
	function GetDescendants(self): { Instance } -- @since 0.9.1-dev
	function GetFullName(self): string -- @since 0.9.1-dev
	function IsA(self, arg1: string): boolean -- @since 0.9.1-dev
	function OfClass(self, arg1: string): boolean -- @since 0.9.1-dev
	function FindFirstChild(self, arg1: string): Instance -- @since 0.9.1-dev
	function FindFirstChildCached(self, arg1: string): Instance -- @since 0.7.0c-alpha
	function FindFirstChildOfClass(self, arg1: string): Instance -- @since 0.9.1-dev
	function FindFirstChildWhichIsA(self, arg1: string): Instance -- @since 0.9.1-dev
	function GetAttribute(self, arg1: string): any -- @since 0.9.1-dev
	function SetAttribute(self, arg1: string, arg2: any): any -- @since 1.6.9-2-alpha
	function GetAttributes(self): { [string]: any } -- @since 0.9.1-dev
	function GetTags(self): (...any) -- @since 1.6.11-alpha
	function HasTag(self, arg1: string): boolean -- @since 1.6.11-alpha
	function IsAncestorOf(self, arg1: Instance): boolean -- @since 1.6.11-alpha
	function IsInvalidInstance(self): boolean
	function WaitForChild(self): () -- @yields @since 1.9.7-beta
end

declare class Shirt extends Instance
	ShirtTemplate: any -- @since 1.7.1-alpha
	Color3: Color3 -- @since 1.7.1-alpha
end

declare class Model extends Instance
	PrimaryPart: Instance -- @since 1.7.1-alpha
end

declare class DataModel extends Instance
	GameId: number -- @since 0.9.1-dev
	UniverseId: number -- @since 0.9.1-dev
	PlaceId: number -- @since 0.9.1-dev
	Workspace: Instance -- @since 0.1.3-alpha
	JobId: string -- @since 0.1.3-alpha
	function GetService(self, arg1: string): Instance? -- @since 0.3.0c-alpha
	function IsLoaded(self): boolean -- @since 0.1.3-alpha
end

declare class GuiObject extends Instance
	ZIndex: number -- @since 1.7.1-alpha
	LayoutOrder: number -- @since 1.7.1-alpha
	Active: boolean -- @since 1.7.1-alpha
	Visible: boolean -- @since 1.7.1-alpha
	Interactable: boolean -- @since 1.7.1-alpha
	Rotation: number -- @since 1.7.1-alpha
	BackgroundColor3: Color3 -- @since 1.7.1-alpha
	Size: UDim2 -- @since 1.6.0-alpha
	Position: UDim2 -- @since 1.6.0-alpha
	AbsolutePosition: Vector2 -- @since 1.6.7-alpha
	AbsoluteSize: Vector2 -- @since 1.6.7-alpha
end

declare class ImageLabel extends GuiObject
	Image: any -- @since 1.7.1-alpha
end

declare class Player extends Instance
	Character: Instance -- @since 0.1.3-alpha
	UserId: number -- @since 0.1.3-alpha
	Team: Instance -- @since 0.1.3-alpha
	DisplayName: string -- @since 0.1.3-alpha
	CharacterAdded: Event -- @since 1.8.3-free
end

declare class UserInputService extends Instance
	InputBegan: Event -- @since 1.7.0b-alpha
	InputEnded: Event -- @since 1.7.0b-alpha
	InputChanged: Event -- @since 1.7.0b-alpha
	function IsKeyDown(self, keyCode: KeyCode): boolean -- @since 1.7.0b-alpha
	function IsMouseButtonPressed(self, mouseButton: KeyCode): boolean -- @since 1.7.0b-alpha
	function GetMouseLocation(self): Vector2 -- @since 1.7.0b-alpha
end

declare class BasePart extends Instance
	Transparency: number -- @since 1.6.9-4-alpha
	LocalTransparencyModifier: number -- @since 1.6.9-4-alpha
	Position: Vector3 -- @since 0.10.0-dev
	CFrame: CFrame -- @since 0.10.0-dev
	Size: Vector3 -- @since 0.10.0-dev
	Color: Color3 -- @since 1.9.4-beta
	Orientation: Vector3 -- @since 1.7.1-alpha
	Velocity: Vector3 -- @since 0.7.0-alpha
	AssemblyLinearVelocity: Vector3 -- @since 0.7.0-alpha
	AssemblyAngularVelocity: Vector3 -- @since 0.7.0-alpha
	IsNetworkOwner: boolean -- @since 0.4.0-alpha
	NetworkOwnerV3: number
	CanCollide: boolean -- @since 0.2.5-alpha
	CanTouch: boolean -- @since 0.2.5-alpha
	CanQuery: boolean -- @since 0.2.5-alpha
	Anchored: boolean -- @since 0.2.5-alpha
	NetworkIsSleeping: boolean -- @since 0.2.5-alpha
end

declare class MeshPart extends BasePart
	MeshId: any -- @since 0.10.0-dev
	TextureID: any -- @since 1.7.1-alpha
end

declare class Decal extends Instance
	ZIndex: number -- @since 1.7.1-alpha
	ColorMapContent: any -- @since 1.7.1-alpha
	NormalMapContent: any -- @since 1.7.1-alpha
	MetalnessMapContent: any -- @since 1.7.1-alpha
end

declare class Camera extends Instance
	FieldOfView: number -- @since 0.1.3-alpha
	CFrame: CFrame -- @since 0.1.3-alpha
	Position: Vector3 -- @since 0.1.3-alpha
	ViewportSize: Vector2 -- @since 1.7.1-alpha
end

declare class Players extends Instance
	LocalPlayer: Instance -- @since 0.2.6-alpha
	RespawnTime: number -- @since 0.2.6-alpha
	PreferredPlayers: number -- @since 0.2.6-alpha
	MaxPlayers: number -- @since 0.2.6-alpha
	UseStrafingAnimations: boolean -- @since 0.2.6-alpha
	ClassicChat: boolean -- @since 0.2.6-alpha
	CharacterAutoLoads: boolean -- @since 0.2.6-alpha
	BubbleChat: boolean -- @since 0.2.6-alpha
	BanningEnabled: boolean -- @since 0.2.6-alpha
	PlayerAdded: Event -- @since 1.8.3-free
	PlayerRemoving: Event -- @since 1.8.3-free
	function GetPlayers(self): { Player } -- @since 0.2.6-alpha
	function GetPlayerFromCharacter(self, character: Instance): Player? -- @since 0.2.6-alpha
end

declare class LuaSourceContainer extends Instance
	Bytecode: buffer -- @since 0.2.6-alpha
	RawBytecode: buffer -- @since 0.2.6-alpha
	BytecodeAvailable: boolean -- @since 0.2.6-alpha
end

declare class Workspace extends Instance
	CurrentCamera: Instance -- @since 1.6.9-2-alpha
	Gravity: number -- @since 0.3.0c-alpha
	FallenPartsDestroyHeight: number -- @since 0.3.0c-alpha
	FallHeightEnabled: boolean -- @since 0.3.0c-alpha
	function GetRealPhysicsFPS(self): number -- @since 0.3.0c-alpha
	function SetRealPhysicsFPS(self, arg1: number): any -- @since 0.3.0c-alpha
end

declare class Humanoid extends Instance
	WalkSpeed: number -- @since 0.3.3-alpha
	JumpHeight: number -- @since 0.3.3-alpha
	JumpPower: number -- @since 0.3.3-alpha
	HipHeight: number -- @since 0.3.3-alpha
	Jump: boolean -- @since 0.5.1-alpha
	Sit: boolean -- @since 0.5.1-alpha
	PlatformStand: boolean -- @since 0.5.1-alpha
	RequiresNeck: boolean -- @since 0.5.1-alpha
	UseJumpPower: boolean -- @since 0.5.1-alpha
	NameDisplayDistance: number -- @since 0.5.1-alpha
	MoveDirection: Vector3 -- @since 0.5.1-alpha
	InternalBodyScale: Vector3 -- @since 0.5.1-alpha
	Health: number -- @since 1.0.0-alpha
	MaxHealth: number -- @since 0.3.3-alpha
	AutoRotate: boolean -- @since 1.9.7-beta
end

declare class ValueBase extends Instance
	Value: any -- @since 1.5.0-alpha
end

declare class MouseService extends Instance
	MouseLocation: Vector2 -- @since 1.6.9-2-alpha
end

declare class Sound extends Instance
	SoundId: any -- @since 1.7.1-alpha
end

declare class AnimationTrack extends Instance
	Animation: Animation -- @since 1.6.8-alpha
end

declare class Animator extends Instance
	function GetActiveAnimationTracks(self): { AnimationTrack } -- @since 1.6.8-alpha
end

declare class TextLabel extends GuiObject
	Text: string -- @since 0.5.4a-alpha
	MaxVisibleGraphemes: number -- @since 1.7.1-alpha
	TextBounds: Vector2 -- @since 1.7.1-alpha
	TextStrokeTransparency: number -- @since 1.7.1-alpha
	TextTransparency: number -- @since 1.7.1-alpha
	TextSize: number -- @since 1.7.1-alpha
	TextColor3: Color3 -- @since 1.7.1-alpha
end

declare class ProximityPrompt extends Instance
	ClickablePrompt: boolean -- @since 1.6.2-alpha
	RequiresLineOfSight: boolean -- @since 1.6.2-alpha
	HoldDuration: number -- @since 1.6.13a-alpha
	Exclusivity: number -- @since 1.6.13a-alpha
	MaxActivationDistance: number -- @since 1.6.13a-alpha
	ObjectText: string -- @since 1.6.13a-alpha
	ActionText: string -- @since 1.6.13a-alpha
end

declare class Animation extends Instance
	AnimationId: number -- @since 1.6.8-alpha
end

declare class RunService extends Instance
	PreRender: Event -- @since 1.6.9-alpha
	PreSimulation: Event -- @since 1.6.9-alpha
	Heartbeat: Event -- @since 1.6.9-alpha
	OnImGui: Event -- @since 1.8.3-free
end

declare class HttpService extends Instance
	function JSONEncode(self, table: any): string -- @since 1.6.9-1-alpha
	function JSONDecode(self, input: string): any -- @since 1.6.9-1-alpha
	function RequestAsync(self, requestOptions: HttpRequestOptions): HttpResponse -- @yields @since 1.6.9-1-alpha
end

declare class TweenService extends Instance
	function Create(self, instance: Instance, info: TweenInfo, propertyTable: { [string]: any }): Tween -- @since 1.6.9-2-alpha
end

declare class Pants extends Instance
	PantsTemplate: any -- @since 1.7.1-alpha
	Color3: Color3 -- @since 1.7.1-alpha
end

declare class SpecialMesh extends Instance
	Offset: Vector3 -- @since 1.7.1-alpha
	Scale: Vector3 -- @since 1.7.1-alpha
	MeshId: any -- @since 1.7.1-alpha
	TextureId: any -- @since 1.7.1-alpha
end

declare class Lighting extends Instance
	Brightness: number -- @since 1.7.1-alpha
	ExposureCompensation: number -- @since 1.7.1-alpha
	GeographicLatitude: number -- @since 1.7.1-alpha
	EnvironmentDiffuseScale: number -- @since 1.7.1-alpha
	EnvironmentSpecularScale: number -- @since 1.7.1-alpha
end

declare class Attachment extends Instance
	WorldPosition: Vector3 -- @since 1.7.1-alpha
	WorldAxis: Vector3 -- @since 1.7.1-alpha
	WorldSecondaryAxis: Vector3 -- @since 1.7.1-alpha
	WorldCFrame: CFrame -- @since 1.7.1-alpha
end

declare class Motor6D extends Instance
	Part0: Instance -- @since 1.7.1-alpha
	Part1: Instance -- @since 1.7.1-alpha
end

declare class IntConstrainedValue extends Instance
	Value: number -- @since 1.7.1-alpha
	MinValue: number -- @since 1.7.1-alpha
	MaxValue: number -- @since 1.7.1-alpha
end

declare class DoubleConstrainedValue extends Instance
	Value: number -- @since 1.7.1-alpha
	MinValue: number -- @since 1.7.1-alpha
	MaxValue: number -- @since 1.7.1-alpha
end

declare class ClickDetector extends Instance
	MaxActivationDistance: number -- @since 1.7.1-alpha
	CursorIcon: any -- @since 1.7.1-alpha
end

declare class Constraint extends Instance
	Attachment0: Instance -- @since 1.7.8-alpha
	Attachment1: Instance -- @since 1.7.8-alpha
	Attachment0Cached: Instance -- @since 1.7.8-alpha
	Attachment1Cached: Instance -- @since 1.7.8-alpha
end

declare class CFrame
	LookVector: Vector3 -- @since 0.6.0-dev
	RightVector: Vector3 -- @since 0.6.0-dev
	UpVector: Vector3 -- @since 0.6.0-dev
	XVector: Vector3 -- @since 0.6.0-dev
	YVector: Vector3 -- @since 0.6.0-dev
	ZVector: Vector3 -- @since 0.6.0-dev
	Rotation: CFrame -- @since 0.6.0-dev
	Position: Vector3 -- @since 0.6.0-dev
	function ToEulerAnglesXYZ(self): (number, number, number) -- @since 0.6.0-dev
	function ToEulerAnglesYXZ(self): (number, number, number) -- @since 0.6.0-dev
	function GetComponents(self): (...any) -- @since 0.6.0-dev
	function Inverse(self): CFrame -- @since 0.6.0-dev
	function Lerp(self, arg1: CFrame, arg2: number): CFrame -- @since 1.2.0-alpha
end

declare class Category
end

declare class Color3
	R: number -- @since 1.6.9-2-alpha
	G: number -- @since 1.6.9-2-alpha
	B: number -- @since 1.6.9-2-alpha
	function Lerp(self, color: Color3, alpha: number): Color3 -- @since 1.6.9-2-alpha
	function ToHSV(self): (number, number, number) -- @since 1.6.9-2-alpha
	function ToHex(self): string -- @since 1.6.9-2-alpha
end

declare class Color4
	R: number -- @since 1.6.9-2-alpha
	G: number -- @since 1.6.9-2-alpha
	B: number -- @since 1.6.9-2-alpha
	A: number -- @since 1.6.9-2-alpha
	function Lerp(self, color: Color4, alpha: number): Color4 -- @since 1.6.9-2-alpha
	function ToHSVA(self): (number, number, number, number) -- @since 1.6.9-2-alpha
	function ToHex(self): string -- @since 1.6.9-2-alpha
end

declare class Control
end

declare class EntitySpecification
end

declare class FontDescriptor
	FontSize: number -- @since 1.6.13-alpha
	FontHash: number -- @since 1.6.13-alpha
end

declare class GuiButton
end

declare class GuiCategory
end

declare class GuiColor
end

declare class GuiConnection
end

declare class GuiDropdown
end

declare class GuiInput
end

declare class GuiKeybind
end

declare class GuiLabel
end

declare class GuiSeparator
end

declare class GuiSlider
end

declare class GuiTab
end

declare class GuiToggle
end

declare class Image
	Width: number -- @since 1.7.5-alpha
	Height: number -- @since 1.7.5-alpha
	IsValid: boolean -- @since 1.7.5-alpha
	Name: string -- @since 1.7.5-alpha
end

declare class InputObject
	KeyCode: KeyCode -- @since 1.7.0b-alpha
	UserInputType: UserInputType -- @since 1.7.0b-alpha
	Position: Vector2 -- @since 1.7.0b-alpha
	Delta: Vector2 -- @since 1.7.0b-alpha
end

declare class RemoteGCObject
	Address: number -- @since 1.8.3-free
	TypeId: number -- @since 1.8.3-free
	TypeName: string -- @since 1.8.3-free
	Value: RemoteGCTableProxy | string | Instance | any -- @since 1.8.3-free
end

declare class RemoteGCTableProxy
end

declare class Tab
end

declare class Tween
	Instance: Instance -- @since 1.6.9-2-alpha
	TweenInfo: TweenInfo -- @since 1.6.9-2-alpha
	Completed: Event -- @since 1.6.9-2-alpha
	PlaybackState: PlaybackState -- @since 1.6.9-2-alpha
	function Cancel(self): any -- @since 1.6.9-2-alpha
	function Pause(self): any -- @since 1.6.9-2-alpha
	function Play(self): any -- @since 1.6.9-2-alpha
end

declare class TweenInfo
	EasingDirection: EasingDirection -- @since 1.6.9-2-alpha
	EasingStyle: EasingStyle -- @since 1.6.9-2-alpha
	Time: number -- @since 1.6.9-2-alpha
	DelayTime: number -- @since 1.6.9-2-alpha
	RepeatCount: number -- @since 1.6.9-2-alpha
	Reverses: boolean -- @since 1.6.9-2-alpha
end

declare class UDim
	Offset: number -- @since 0.5.4a-alpha
	Scale: number -- @since 0.5.4a-alpha
end

declare class UDim2
	Height: UDim -- @since 0.5.4a-alpha
	Width: UDim -- @since 0.5.4a-alpha
	Y: UDim -- @since 0.5.4a-alpha
	X: UDim -- @since 0.5.4a-alpha
	function Lerp(self, goal: UDim2, alpha: number): UDim2 -- @since 0.5.4a-alpha
end

declare class Vector2
	X: number -- @since 0.9.1-dev
	Y: number -- @since 0.9.1-dev
	Magnitude: number
	Unit: Vector2
	function Cross(self, other: Vector2): number
	function Dot(self, other: Vector2): number
	function Angle(self, other: Vector2, isSigned: boolean): number
	function Lerp(self, goal: Vector2, alpha: number): Vector2
	function Abs(self): Vector2
	function Ceil(self): Vector2
	function Floor(self): Vector2
	function Sign(self): Vector2
	function Max(self, other: Vector2): Vector2
	function Min(self, other: Vector2): Vector2
	function FuzzyEq(self, other: Vector2, epsilon: number): boolean
end

declare class WriteLoop
end

declare font: {
	get_font_descriptor: (fontName: string, fontSize: number) -> FontDescriptor, -- @since 1.6.15-alpha
	request_font_reload: () -> any, -- @since 1.6.15-alpha
	add_ttf_font: (fontName: string, ttfData: buffer) -> boolean, -- @since 1.6.15-alpha
}

declare immediate: {
	circle: (center: Vector2 | Vector3, radii: number, filled: boolean, outlined: boolean, color: Color4) -> boolean, -- @since 1.6.15-alpha
	line: (startPoint: Vector2 | Vector3, endPoint: Vector2 | Vector3, thickness: number, outlined: boolean, color: Color4) -> boolean, -- @since 1.6.15-alpha
	rectangle: (topLeft: Vector2 | Vector3, bottomRight: Vector2 | Vector3, roundness: number, filled: boolean, outlined: boolean, color: Color4) -> boolean, -- @since 1.6.15-alpha
	text: (topLeft: Vector2 | Vector3, text: string, fontDescriptor: FontDescriptor, outlined: boolean, color: Color4) -> boolean, -- @since 1.6.15-alpha
	calculate_text_size: (text: string, fontDescriptor: FontDescriptor) -> Vector2, -- @since 1.6.15-alpha
	image: (image: Image, topLeft: Vector2 | Vector3, bottomRight: Vector2 | Vector3, tint: Color4?, rounding: number?) -> boolean, -- @since 1.7.5-alpha
	convex_poly_filled: (points: { Vector2 }, color: Color4) -> boolean, -- @since 1.8.3-free
}

declare task: {
	delay: (duration: number, callback: any, ...any) -> thread, -- @since 0.6.0-dev
	spawn: (callback: any, ...any) -> thread, -- @since 0.6.0-dev
	defer: (callback: any, ...any) -> thread, -- @since 0.6.0-dev
	wait: (duration: number?) -> number, -- @yields @since 0.6.0-dev
	cancel: (thread: thread) -> (boolean, string?), -- @since 1.6.11-alpha
}

declare function delay(duration: number, callback: any, ...: any): thread -- @since 0.6.0-dev
declare function spawn(callback: any, ...: any): thread -- @since 0.6.0-dev
declare function defer(callback: any, ...: any): thread -- @since 0.6.0-dev
declare function wait(duration: number?): number -- @yields @since 0.6.0-dev
declare function cancel(thread: thread): (boolean, string?) -- @since 1.6.11-alpha

declare CFrame: {
	identity: CFrame, -- @since 1.2.0-alpha
	new: () -> CFrame, -- @since 0.6.0-dev
	lookAt: (at: Vector3, lookAt: Vector3, up: Vector3?) -> CFrame, -- @since 0.6.0-dev
	lookAlong: (at: Vector3, direction: Vector3, up: Vector3?) -> CFrame, -- @since 1.2.0-alpha
	fromMatrix: (pos: Vector3, vX: Vector3, vY: Vector3, vZ: Vector3?) -> CFrame, -- @since 1.2.0-alpha
	fromEulerAnglesXYZ: (rx: number, ry: number, rz: number) -> CFrame, -- @since 1.2.0-alpha
	fromEulerAnglesYXZ: (rx: number, ry: number, rz: number) -> CFrame, -- @since 1.2.0-alpha
	fromEulerAngles: (rx: number, ry: number, rz: number, order: number?) -> CFrame, -- @since 1.2.0-alpha
	fromAxisAngle: (axis: Vector3, rotation: number) -> CFrame, -- @since 1.2.0-alpha
}

declare function print(...: any): any -- @since 0.9.1-dev
declare function warn(...: any): any -- @since 0.9.1-dev
declare function typeof(object: any): string -- @since 1.6.9-alpha

declare rendering: {
	world_to_screen: (target: BasePart | Vector3) -> (Vector2, boolean), -- @since 0.6.0a-alpha
	is_on_screen: (target: BasePart | Vector3) -> boolean, -- @since 0.6.0a-alpha
	mass_project: (points: { Vector3 }) -> { { any } }, -- @since 1.6.12a-alpha
	convex_hull_2d: (points: { Vector2 }) -> { Vector2 }, -- @since 1.8.3-free
	convex_hull_3d: (points: { Vector3 }) -> { any }?, -- @since 1.8.3-free
	get_window_size: () -> Vector2, -- @since 1.9.10-beta
}

declare memory: {
	is_enabled: () -> boolean, -- @since 0.2.1a-alpha
	write: (address: number, data: buffer) -> ProcessWriteResult, -- @since 0.2.1a-alpha
	write_string: (address: number, string: string) -> ProcessWriteResult, -- @since 1.9.1-beta
	writeu8: (address: number, value: number) -> ProcessWriteResult, -- @since 0.5.1-alpha
	writebool: (address: number, value: boolean) -> ProcessWriteResult, -- @since 0.5.1-alpha
	writeu16: (address: number, value: number) -> ProcessWriteResult, -- @since 0.5.1-alpha
	writeu32: (address: number, value: number) -> ProcessWriteResult, -- @since 0.5.1-alpha
	writei8: (address: number, value: number) -> ProcessWriteResult, -- @since 0.5.1-alpha
	writei16: (address: number, value: number) -> ProcessWriteResult, -- @since 0.5.1-alpha
	writei32: (address: number, value: number) -> ProcessWriteResult, -- @since 0.5.1-alpha
	writef32: (address: number, value: number) -> ProcessWriteResult, -- @since 0.5.1-alpha
	writef64: (address: number, value: number) -> ProcessWriteResult, -- @since 0.5.1-alpha
	read: (address: number, size: number) -> (ProcessReadResult, buffer?), -- @since 0.2.1a-alpha
	readu8: (address: number) -> (ProcessReadResult, number?), -- @since 0.5.1-alpha
	readbool: (address: number) -> (ProcessReadResult, boolean?), -- @since 0.5.1-alpha
	readu16: (address: number) -> (ProcessReadResult, number?), -- @since 0.5.1-alpha
	readu32: (address: number) -> (ProcessReadResult, number?), -- @since 0.5.1-alpha
	readi8: (address: number) -> (ProcessReadResult, number?), -- @since 0.5.1-alpha
	readi16: (address: number) -> (ProcessReadResult, number?), -- @since 0.5.1-alpha
	readi32: (address: number) -> (ProcessReadResult, number?), -- @since 0.5.1-alpha
	readf32: (address: number) -> (ProcessReadResult, number?), -- @since 0.5.1-alpha
	readf64: (address: number) -> (ProcessReadResult, number?), -- @since 0.5.1-alpha
	read_pointer: (address: number) -> (ProcessReadResult, number?), -- @since 0.5.1-alpha
	read_string: (address: number, isCxx: boolean, readCount: number?, readExactly: boolean) -> (ProcessReadResult, string?), -- @since 0.2.1a-alpha
	scan_signature: (signature: string, start: number?, end_: number?) -> (ProcessReadResult, { number }?), -- @yields @since 0.2.1a-alpha
	scan_instances: (vtableAddress: number) -> { number }, -- @since 0.2.1a-alpha
	is_valid_address: (address: number) -> boolean, -- @since 0.2.6-alpha
	scan_vtable: (name: string) -> number?, -- @since 0.2.1a-alpha
	get_base_address: () -> number, -- @since 0.3.0c-alpha
	watch: (address: number, width: number, refresh_rate_in_ms: number) -> Event, -- @since 1.8.3-free
	immediate_watch: (address: number, width: number, refresh_rate_in_ms: number) -> Event, -- @since 1.8.3-free
	create_write_loop: (address: number, buffer: buffer, mode: string?) -> WriteLoop, -- @since 1.8.4-free
}

declare rbxcli: {
	teleport_local_player: (position: Vector3) -> nil, -- @since 0.2.4-alpha
	get_product_information: () -> ProductInformation, -- @since 0.6.0a-alpha
	display_notification: (message: string, duration: number?) -> nil, -- @since 0.3.0c-alpha
	reparent: (instance: Instance, parent: Instance?) -> nil, -- @hybrid @since 0.7.0c-alpha
	fire_proximity_prompt: (prompt: ProximityPrompt) -> nil, -- @hybrid @since 1.3.0-alpha
	create_instance: (className: string, parent: Instance) -> (Instance?, string?), -- @hybrid @since 1.3.0-alpha
	fire_touch_interest: (part0: BasePart, part1: BasePart, touch: number, replicate: boolean?) -> nil, -- @hybrid @since 1.4.0-alpha
	fire_remote_event: (remote: RemoteEvent | UnreliableRemoteEvent, ...any) -> nil, -- @hybrid @since 1.6.7-alpha
	raknet_send: (data: buffer) -> nil, -- @hybrid @since 1.6.8-alpha
	raknet_receive: (data: buffer) -> nil, -- @hybrid @since 1.7.1-alpha
	is_permission_granted: (permission: string) -> boolean, -- @since 1.6.13-alpha
	get_instances: () -> RemoteGCTableProxy?, -- @yields @since 1.8.4-free
	get_nil_instances: () -> { Instance }, -- @yields @since 1.8.4-free
	client_crash: () -> any,
	panic: () -> any,
	loadstring: (source: string, options: LoadstringOptions?) -> any, -- @since 0.6.0a-alpha
	decompile: (container: Instance, options: DecompilerOptions?) -> string, -- @since 0.6.0a-alpha
}

declare physics: {
	are_parts_updated: () -> boolean, -- @since 1.2.0-alpha
	raycast: (origin: Vector3, direction: Vector3, distance: number, filterList: { BasePart }) -> RaycastResult?, -- @since 0.5.1-alpha
	is_part_tracked: (part: BasePart) -> boolean, -- @since 0.7.0b-alpha
	can_part_be_tracked: (part: BasePart) -> boolean, -- @since 0.7.0b-alpha
	get_part_pool: (part: BasePart) -> number, -- @since 0.7.0b-alpha
	get_tracked_size: (part: BasePart) -> Vector3, -- @since 0.7.0b-alpha
	get_tracked_cframe: (part: BasePart) -> CFrame, -- @since 0.7.0b-alpha
	is_point_in_sphere_volume: (point: Vector3, center: Vector3, radius: number) -> boolean, -- @since 1.2.0-alpha
	is_point_in_box_volume: (point: Vector3, cframe: CFrame, size: Vector3) -> boolean, -- @since 1.2.0-alpha
	is_point_in_part: (point: Vector3, part: BasePart) -> boolean, -- @since 1.2.0-alpha
}

declare UDim: {
	new: (scale: number?, offset: number?) -> UDim, -- @since 0.5.4a-alpha
}

declare UDim2: {
	new: (xScale: number | UDim, xOffset: number | UDim?, yScale: number?, yOffset: number?) -> UDim2, -- @since 0.5.4a-alpha
	fromScale: (x: number, y: number) -> UDim2, -- @since 0.5.4a-alpha
	fromOffset: (x: number, y: number) -> UDim2, -- @since 0.5.4a-alpha
}

declare input: {
	key_down: (key: number | KeyCode) -> InputState, -- @since 1.2.0-alpha
	key_up: (key: number | KeyCode) -> InputState, -- @since 1.2.0-alpha
	key_click: (key: number | KeyCode) -> InputState, -- @yields @since 1.2.0-alpha
	is_key_down: (key: number | KeyCode) -> boolean, -- @since 1.2.0-alpha
	mouse_down: (button: number | KeyCode) -> InputState, -- @since 1.2.0-alpha
	mouse_up: (button: number | KeyCode) -> InputState, -- @since 1.2.0-alpha
	is_mouse_down: (button: number | KeyCode) -> boolean, -- @since 1.2.0-alpha
	mouse_click: (button: number | KeyCode, count: number?) -> InputState, -- @yields @since 1.2.0-alpha
	mouse_move_absolute: (position: Vector2) -> InputState, -- @since 1.2.0-alpha
	mouse_move_relative: (offset: Vector2) -> InputState, -- @since 1.2.0-alpha
	mouse_move_tween: (target: Vector2, duration: number) -> InputState, -- @yields @since 1.2.0-alpha
	mouse_move_instance: (instance: GuiObject) -> InputState, -- @since 1.2.0-alpha
	mouse_move_instance_tween: (instance: GuiObject, duration: number) -> InputState, -- @yields @since 1.2.0-alpha
	mouse_scroll: (delta: number) -> InputState, -- @since 1.2.0-alpha
	is_window_focused: () -> boolean, -- @since 1.2.0-alpha
}

declare Vector2: {
	zero: Vector2, -- @since 1.2.0-alpha
	one: Vector2, -- @since 1.2.0-alpha
	xAxis: Vector2, -- @since 1.2.0-alpha
	yAxis: Vector2, -- @since 1.2.0-alpha
	new: (x: number?, y: number?) -> Vector2, -- @since 1.2.0-alpha
}

declare fs: {
	create_file: (path: string) -> nil, -- @since 1.4.2-alpha
	create_directory: (path: string) -> nil, -- @since 1.4.2-alpha
	write_async: (path: string, data: buffer) -> nil, -- @yields @since 1.4.2-alpha
	read_async: (path: string) -> buffer, -- @yields @since 1.4.2-alpha
	append_async: (path: string, data: buffer) -> nil, -- @yields @since 1.4.2-alpha
	is_file: (path: string) -> boolean, -- @since 1.4.2-alpha
	is_directory: (path: string) -> boolean, -- @since 1.4.2-alpha
	list_directories: (directory: string) -> { string }, -- @since 1.4.2-alpha
	list_objects: (directory: string) -> { string }, -- @since 1.4.2-alpha
	list_files: (directory: string) -> { string }, -- @since 1.4.2-alpha
}

declare gc: {
	getgc: (filterTypeName: string?) -> { RemoteGCObject }, -- @yields @since 1.8.3-free
}

declare entity: {
	add_search_entry: (entry: EntitySearchEntry) -> EntityActionResult, -- @since 1.7.6b-alpha
	remove_search_entry: (id: string) -> EntityActionResult, -- @since 1.7.6b-alpha
	get_search_entries: () -> { EntitySearchEntry }, -- @since 1.7.6b-alpha
	has_search_entry: (id: string) -> boolean, -- @since 1.7.6b-alpha
	clear_search_entries: () -> nil, -- @since 1.7.6b-alpha
	update_search_entry: (id: string, entry: EntitySearchEntry) -> EntityActionResult, -- @since 1.7.6b-alpha
	get_entities: () -> { EntitySnapshot }, -- @since 1.7.6b-alpha
	search_entry_schema: () -> EntitySearchEntrySchema, -- @since 1.8.1-free
	create_specification: (name: string, callback: (() -> { EntitySpecificationEntry })?) -> EntitySpecification, -- @since 1.8.3-free
	delete_specification: (specOrName: any | string) -> boolean, -- @since 1.8.3-free
	list_specifications: () -> { string }, -- @since 1.8.3-free
}

declare TweenInfo: {
	new: (time: number?, easingStyle: EasingStyle?, easingDirection: EasingDirection?, repeatCount: number?, reverses: boolean?, delayTime: number?) -> TweenInfo, -- @since 1.6.9-2-alpha
}

declare Color3: {
	new: (red: number, green: number, blue: number) -> Color3, -- @since 1.6.9-2-alpha
	fromRGB: (red: number, green: number, blue: number) -> Color3, -- @since 1.6.9-2-alpha
	fromHSV: (hue: number, saturation: number, value: number) -> Color3, -- @since 1.6.9-2-alpha
	fromHex: (hex: string) -> Color3, -- @since 1.6.9-2-alpha
}

declare Color4: {
	new: (red: number, green: number, blue: number, alpha: number) -> Color4, -- @since 1.6.9-2-alpha
	fromRGBA: (red: number, green: number, blue: number, alpha: number) -> Color4, -- @since 1.6.9-2-alpha
	fromHSVA: (hue: number, saturation: number, value: number, alpha: number) -> Color4, -- @since 1.6.9-2-alpha
	fromHex: (hex: string) -> Color4, -- @since 1.6.9-2-alpha
}

declare image: {
	load: (name: string, data: buffer) -> Image?, -- @since 1.7.5-alpha
	load_file: (name: string, path: string) -> Image?, -- @since 1.7.5-alpha
	load_anonymous: (data: buffer) -> Image?, -- @since 1.7.5-alpha
	fetch_roblox: (assetId: number | string) -> Image?, -- @since 1.9.0-alpha
	get: (name: string) -> Image?, -- @since 1.7.5-alpha
	unload: (name: string) -> any, -- @since 1.7.5-alpha
	clear_cache: () -> any, -- @since 1.7.5-alpha
	cache_size: () -> number, -- @since 1.7.5-alpha
}

declare roblox: {
	fetch_public_servers: (placeId: number, cursor: string?, limit: number?) -> any, -- @since 1.8.3-free
	join_server: (placeId: number, gameInstanceId: string?) -> boolean, -- @since 1.8.3-free
	make_launch_url: (placeId: number, gameInstanceId: string?) -> string, -- @since 1.8.3-free
}

declare rbxcli_ui: {
	add_tab: (name: string, icon: string?) -> Tab, -- @since 1.8.3-free
	remove_tab: (name: string) -> boolean, -- @since 1.8.3-free
	list_tabs: () -> { string }, -- @since 1.8.3-free
	clear: () -> any, -- @since 1.8.3-free
}

declare rbxcli_gui: {
	add_tab: (name: string, opts: { any }) -> GuiTab,
	remove_tab: (name: string) -> boolean,
	list_tabs: () -> { string },
	clear: () -> any,
}

declare audio: {
	is_initialized: () -> boolean, -- @since 1.8.3-free
	play_ui: (name: string, volume: number?) -> boolean, -- @since 1.8.3-free
	play_at: (file: string, position: Vector3, volume: number?) -> boolean, -- @since 1.8.3-free
	set_master_volume: (v: number) -> any, -- @since 1.8.3-free
	set_ui_volume: (v: number) -> any, -- @since 1.8.3-free
	set_spatial_volume: (v: number) -> any, -- @since 1.8.3-free
	get_master_volume: () -> number, -- @since 1.8.3-free
	get_ui_volume: () -> number, -- @since 1.8.3-free
	get_spatial_volume: () -> number, -- @since 1.8.3-free
	set_listener: (cf: CFrame) -> any, -- @since 1.8.3-free
	set_listener_velocity: (v: Vector3) -> any, -- @since 1.8.3-free
	make_spatial: (file: string, config: any?) -> any, -- @since 1.8.3-free
}

declare settings: {
	register: (namespace: string, schema: any) -> any, -- @since 1.8.3-free
	get: (fqn: string) -> any, -- @since 1.8.3-free
	set: (fqn: string, value: any) -> any, -- @since 1.8.3-free
	reset: (fqn: string) -> any, -- @since 1.8.3-free
	observe: (fqn: string, callback: (oldValue: any, newValue: any) -> ()) -> any, -- @since 1.8.3-free
	get_schema: (fqn: string) -> any, -- @since 1.8.3-free
	list_namespaces: () -> any, -- @since 1.8.3-free
	list_keys: (namespace: string) -> any, -- @since 1.8.3-free
}

declare crypt: {
	hash: (data: string | buffer, algorithm: string | "sha256" | "sha384" | "sha512" | "md5") -> string, -- @since 1.8.3-free
	hash_to_buffer: (data: string | buffer, algorithm: string | "sha256" | "sha384" | "sha512" | "md5") -> buffer, -- @since 1.8.3-free
	hmac: (data: string | buffer, key: string | buffer, algorithm: string | "sha256" | "sha384" | "sha512" | "md5") -> string, -- @since 1.8.3-free
	hmac_to_buffer: (data: string | buffer, key: string | buffer, algorithm: string | "sha256" | "sha384" | "sha512" | "md5") -> buffer, -- @since 1.8.3-free
	base64encode: (data: string | buffer) -> string, -- @since 1.8.3-free
	base64decode: (s: string) -> buffer, -- @since 1.8.3-free
	hexencode: (data: string | buffer) -> string, -- @since 1.8.3-free
	hexdecode: (s: string) -> buffer, -- @since 1.8.3-free
	random: (n: number) -> buffer, -- @since 1.8.3-free
	generatekey: () -> string, -- @since 1.8.3-free
	generatebytes: (n: number) -> buffer, -- @since 1.8.3-free
	encrypt_aes_cbc: (plaintext: string | buffer, key: string | buffer, iv: string | buffer) -> buffer, -- @since 1.8.3-free
	decrypt_aes_cbc: (ciphertext: string | buffer, key: string | buffer, iv: string | buffer) -> buffer, -- @since 1.8.3-free
	encrypt_aes_gcm: (plaintext: string | buffer, key: string | buffer, iv: string | buffer, aad: string | buffer?) -> (buffer, buffer, "tag"), -- @since 1.8.3-free
	decrypt_aes_gcm: (ciphertext: string | buffer, key: string | buffer, iv: string | buffer, tag: string | buffer, aad: string | buffer?) -> buffer, -- @since 1.8.3-free
	encrypt: (plaintext: string | buffer, base64Key: string) -> (string, string, "base64"), -- @since 1.8.3-free
	decrypt: (base64Ciphertext: string, base64Key: string, base64Iv: string) -> buffer, -- @since 1.8.3-free
	blake3: (data: string | buffer, outlen: number?) -> string, -- @since 1.8.3-free
	blake3_to_buffer: (data: string | buffer, outlen: number?) -> buffer, -- @since 1.8.3-free
	blake3_keyed: (data: string | buffer, key: string | buffer, outlen: number?) -> string, -- @since 1.8.3-free
	blake2b: (data: string | buffer, key: string | buffer?, outlen: number?) -> string, -- @since 1.8.3-free
	chacha20: (data: string | buffer, key: string | buffer, nonce: string | buffer, counter: number?) -> buffer, -- @since 1.8.3-free
	chacha20poly1305_encrypt: (plaintext: string | buffer, key: string | buffer, nonce: string | buffer, aad: string | buffer?) -> buffer, -- @since 1.8.3-free
	chacha20poly1305_decrypt: (ciphertext: string | buffer, key: string | buffer, nonce: string | buffer, aad: string | buffer?) -> buffer, -- @since 1.8.3-free
	ed25519_keypair: () -> (buffer, buffer, "secret_key"), -- @since 1.8.3-free
	ed25519_sign: (message: string | buffer, secret_key: string | buffer) -> buffer, -- @since 1.8.3-free
	ed25519_verify: (message: string | buffer, signature: string | buffer, public_key: string | buffer) -> boolean, -- @since 1.8.3-free
	x25519_keypair: () -> (buffer, buffer, "secret_key"), -- @since 1.8.3-free
	x25519_shared_secret: (secret_key: string | buffer, peer_public: string | buffer) -> buffer, -- @since 1.8.3-free
}
